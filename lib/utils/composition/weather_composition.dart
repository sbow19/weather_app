import 'package:weather_app/data/external/weather_api_repository.dart';
import 'package:weather_app/data/external/weather_api_service.dart';
import 'package:weather_app/data/external/weather_service.dart';
import 'package:weather_app/data/fake_data_services/fake_user_location_service.dart';
import 'package:weather_app/data/fake_data_services/fake_weather_service.dart';
import 'package:weather_app/data/local/user_position/platform/location_service.dart';
import 'package:weather_app/data/local/user_position/platform/user_locaton_service_factory.dart';
import 'package:weather_app/data/local/user_position/user_location_repository.dart';
import 'package:weather_app/data/local/user_position/user_location_service.dart';
import 'package:weather_app/ui/home/view_models/weather_view_model.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';
import 'package:http/http.dart' as http;

WeatherViewModel composeWeatherViewModel() {
  EnvVariablesService envVariablesService =
      EnvVariablesService.envVariablesService;
  LoggerService? loggerService = LoggerService.loggerService;

  ///
  /// Weather API service
  ///
  WeatherService weatherService;

  String env = envVariablesService.getEnv("ENV");

  switch (env) {
    case "prev":
      weatherService = FakeWeatherService();
      break;
    default:
      weatherService = WeatherAPIService(
        httpClient: http.Client(),
        envVariablesService: envVariablesService,
        loggerService: loggerService!,
      );
      break;
  }

  WeatherAPIRepository weatherAPIRepository = WeatherAPIRepository(
    weatherAPIService: weatherService,
    envVariablesService: envVariablesService,
    loggerService: loggerService!,
  );

  ///
  /// User Location Service
  ///
  LocationService locationService;

  switch (env) {
    case "prev":
      locationService = FakeUserLocationService();
      break;
    default:
      locationService = getUserLocationService(
        loggerService: loggerService,
        envVariablesService: envVariablesService,
      );
      break;
  }

  UserLocationService userLocationService = UserLocationService(
    envVariablesService: envVariablesService,
    loggerService: loggerService,
    locationService: locationService,
  );

  UserLocationRepository userLocationRepository = UserLocationRepository(
    userLocationService: userLocationService,
    loggerService: loggerService,
    envVariablesService: envVariablesService,
  );

  return WeatherViewModel(
    envVariablesService: envVariablesService,
    loggerService: loggerService,
    weatherAPIrepository: weatherAPIRepository,
    userLocationRepository: userLocationRepository,
  );
}
