import 'dart:convert';

import 'package:weather_app/data/external/model/weather_api_model.dart';
import 'package:weather_app/data/external/weather_api_service.dart';
import 'package:weather_app/data/external/weather_service.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';
import 'package:http/http.dart' as http;

class WeatherAPIRepository {
  static WeatherAPIRepository? _instance;

  final EnvVariablesService _envVariablesService;
  final LoggerService _loggerService;
  final WeatherService _weatherAPIService;

  // Cached WeatherAPIModel result
  late Duration _pollInterval;
  DateTime _lastFetchTime = DateTime.now();
  WeatherAPIModel? _cachedWeatherResult;

  factory WeatherAPIRepository({
    required WeatherService weatherAPIService,
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
  }) {
    _instance ??= WeatherAPIRepository._internal(
      weatherAPIService: weatherAPIService,
      envVariablesService: envVariablesService,
      loggerService: loggerService,
    );

    return _instance!;
  }
  WeatherAPIRepository._internal({
    required WeatherService weatherAPIService,
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
  }) : _weatherAPIService = weatherAPIService,
       _envVariablesService = envVariablesService,
       _loggerService = loggerService {
    _pollInterval = Duration(
      seconds: int.parse(_envVariablesService.getEnv("POLL_INTERVAL_SECONDS")),
    );
  }

  // Return raw http response
  Future<WeatherAPIModel> queryWeatherAPI({
    required WeatherAPIOptions options,
  }) async {
    final now = DateTime.now();

    _loggerService.i('''
      Now: $now
      Last fetch time: $_lastFetchTime 
      Difference: ${now.difference(_lastFetchTime)} 
      Poll interval: $_pollInterval

      ''');

    // If within throttle window, return cached result
    if (now.difference(_lastFetchTime) < _pollInterval &&
        _cachedWeatherResult != null) {
      return _cachedWeatherResult!;
    }

    try {
      http.Response response = await _weatherAPIService.queryWeatherAPI(
        options: options,
      );
      // Parse response
      int statusCode = response.statusCode;


      switch (statusCode) {
        case 200:
          final jsonData = jsonDecode(response.body);

          // Create Dart object/data model of json response
          WeatherAPIModel weatherAPIModel = WeatherAPIModel.fromJson(jsonData);
          _cachedWeatherResult = weatherAPIModel;
          _lastFetchTime = now;
          return weatherAPIModel;
        case 400:
          _loggerService.e('Bad Request: ${response.body}');
          break;
        case 401:
          _loggerService.e('Unauthorized: Check your API key.');
          break;
        case 500:
          _loggerService.e('Server Error: ${response.body}');
          break;
        default:
          _loggerService.e('Unhandled status code: ${response.statusCode}');
      }

      throw Exception("Error in WeatherAPIService");
    } on Exception catch (e) {
      // Return cached result on query failure
      if (_cachedWeatherResult != null) return _cachedWeatherResult!;
      _loggerService.e("Weather API Repository: ${e.toString()}");
      rethrow;
    }
  }
}
