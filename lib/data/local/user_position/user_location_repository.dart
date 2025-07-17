import 'package:location/location.dart';
import 'package:weather_app/data/local/user_position/user_location_service.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

///
/// Wrapper for user position service.
///
class UserLocationRepository {
  // Singleton initialiser
  static UserLocationRepository? _instance;
  final UserLocationService _userLocationService;
  final EnvVariablesService _envVariablesService;
  final LoggerService _loggerService;

  factory UserLocationRepository({
    required UserLocationService userLocationService,
    required LoggerService loggerService,
    required EnvVariablesService envVariablesService,
  }) {
    _instance ??= UserLocationRepository._internal(
      envVariablesService: envVariablesService,
      loggerService: loggerService,
      userLocationService: userLocationService,
    );

    return _instance!;
  }

  UserLocationRepository._internal({
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
    required UserLocationService userLocationService,
  }) : _envVariablesService = envVariablesService,
       _loggerService = loggerService,
       _userLocationService = userLocationService;


  Future<LocationData> getUserLocation() async {
    try {
      return await _userLocationService.getUserLocation();
    } on Exception catch (e) {
      _loggerService.e(e.toString());
      rethrow;
    }
  }
  
  Stream<LocationData> get locationStream =>
      _userLocationService.locationStream.handleError((e) {
      _loggerService.e('Location stream error: ${e.toString()}');
      throw e;
    });
}
