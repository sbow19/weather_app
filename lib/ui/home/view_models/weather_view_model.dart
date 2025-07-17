import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:weather_app/data/external/model/weather_api_model.dart';
import 'package:weather_app/data/external/weather_api_repository.dart';
import 'package:weather_app/data/external/weather_api_service.dart';
import 'package:weather_app/data/local/user_position/user_location_repository.dart';
import 'package:weather_app/utils/async/aync_wrapper.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

class WeatherViewModel extends ChangeNotifier {
  static WeatherViewModel? _instance;

  final LoggerService _loggerService;
  final EnvVariablesService _envVariablesService;
  final WeatherAPIRepository _weatherAPIRepository;
  final UserLocationRepository _userLocationRepository;

  late final StreamSubscription<WeatherAPIModel> _weatherStream;

  ///
  /// _weatherStream updated weather.value. Changes to this value 
  ///  notifiers listening widgets.
  ///
  final ValueNotifier<AsyncWrapper<WeatherAPIModel>> weather = ValueNotifier(
    AsyncWrapper.loading(),
  );

  ///
  /// Singleton instance constructor
  ///
  factory WeatherViewModel({
    required WeatherAPIRepository weatherAPIrepository,
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
    required UserLocationRepository userLocationRepository,
  }) {
    _instance ??= WeatherViewModel._internal(
      weatherAPIRepository: weatherAPIrepository,
      envVariablesService: envVariablesService,
      loggerService: loggerService,
      userLocationRepository: userLocationRepository,
    );

    return _instance!;
  }

  WeatherViewModel._internal({
    required WeatherAPIRepository weatherAPIRepository,
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
    required UserLocationRepository userLocationRepository,
  }) : _weatherAPIRepository = weatherAPIRepository,
       _envVariablesService = envVariablesService,
       _loggerService = loggerService,
       _userLocationRepository = userLocationRepository {

    ///
    /// Start  weather stream when object is first constructed;
    /// remains a Singleton. Disposed when widget unmounts.
    ///
    startWeatherStream();
  }

  // Start listening to weather date stream and update data in ViewModel
  void startWeatherStream() {

    /// Extends user location stream with Open Weather API request
    /// When stream receives changes, the listen() updates weather.value
    /// notifying UI.
    _weatherStream = _userLocationRepository.locationStream
        .asyncMap((locationData) async {
          final lat = locationData.latitude!;
          final lon = locationData.longitude!;

          final options = WeatherAPIOptions(
            lat: lat,
            lon: lon,
            units: WeatherAPIUnits.metric,
            excludedParts: [WeatherAPIParts.minutely, WeatherAPIParts.hourly],
          );

          return await _weatherAPIRepository.queryWeatherAPI(options: options);
        })
        .listen(
          // UI will automatically update when new value comes from stream
          // ValueNotifier is updated with a new AsyncWrapper instance
          (weatherData) {
            weather.value = AsyncWrapper.data(weatherData);
          },
          onError: (e, s) {
            weather.value = AsyncWrapper.error(e, s);
          },
        );
  }

  // Explicit API call--> UNUSED
  Future<WeatherAPIModel> queryWeatherAPI() async {

    LocationData locationData = await _userLocationRepository.getUserLocation();
    _loggerService.i("${locationData.latitude} ${locationData.longitude}");

    WeatherAPIOptions options = WeatherAPIOptions(
      lat: locationData.latitude ?? 0.0,
      lon: locationData.longitude ?? 0.0,
      units: WeatherAPIUnits.standard,
      excludedParts: [
        WeatherAPIParts.minutely, // To fine grained for current purposes
      ],
    );
    WeatherAPIModel weatherAPIModel = await _weatherAPIRepository
        .queryWeatherAPI(options: options);

    return weatherAPIModel;
  }

  // Clean up on unmount
  @override
  void dispose() {
    _weatherStream.cancel();
    weather.dispose();
    super.dispose();
    _instance = null;
  }
}
