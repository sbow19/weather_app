import 'package:location/location.dart';
import 'package:weather_app/data/local/user_position/platform/location_service.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

class UserLocationService {
  static UserLocationService? _instance;

  final LoggerService _loggerService;
  final EnvVariablesService _envVariablesService;
  final LocationService _locationService;

  ///
  /// Singleton constructor logic
  ///
  factory UserLocationService({
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
    required LocationService locationService,
  }) {
    _instance ??= UserLocationService._internal(
      envVariablesService: envVariablesService,
      loggerService: loggerService,
      locationService: locationService,
    );

    return _instance!;
  }

  // Define named private constructor logic. For every new object
  UserLocationService._internal({
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
    required LocationService locationService,
  }) : _envVariablesService = envVariablesService,
       _loggerService = loggerService,
       _locationService = locationService;

  ///
  /// Location Service API methods exposed here
  ///
  Stream<LocationData> get locationStream => _locationService.locationStream;

  Future<LocationData> getUserLocation() {

    return _locationService.getUserLocation();
  
  }
}
