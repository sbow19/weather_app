import 'dart:async';

///
/// TODO: location.dart is specific to mobile. Conditionally import
/// location services depending on device.
///
import 'package:location/location.dart';
import 'package:weather_app/data/local/user_position/platform/location_service.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

///
///  Expose Stream of location data to dynamically update weather
///  info based on user location. Initialised with platform specific
///  interface for obtaining
///
class MobileUserLocationService implements LocationService {
  static MobileUserLocationService? _instance;
  final EnvVariablesService _envVariablesService;
  final LoggerService _loggerService;

  late Location _location;

  // Singleton initialiser
  factory MobileUserLocationService({
    required LoggerService loggerService,
    required EnvVariablesService envVariablesService,
  }) {
    _instance ??= MobileUserLocationService._internal(
      envVariablesService: envVariablesService,
      loggerService: loggerService,
    );

    return _instance!;
  }
  MobileUserLocationService._internal({
    required EnvVariablesService envVariablesService,
    required LoggerService loggerService,
  }) : _envVariablesService = envVariablesService,
       _loggerService = loggerService {
    _location = Location();
  }

  @override
  Stream<LocationData> get locationStream async* {
    bool serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
    }

    PermissionStatus permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
    }

    yield* _location.onLocationChanged;
  }

  @override
  Future<LocationData> getUserLocation() async {
    return await _location.getLocation();
  }
}

getPlatformLocationService({
  LoggerService? loggerService,
  EnvVariablesService? envVariablesService,
}) {
  return MobileUserLocationService(
    loggerService: loggerService!,
    envVariablesService: envVariablesService!,
  );
}
