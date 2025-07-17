import 'dart:async';
import 'dart:js_interop';
import 'package:web/web.dart';
import 'location_service.dart';
import 'package:location/location.dart'; // for LocationData type or create your own
import 'package:weather_app/utils/logging/logger.dart';
import 'package:weather_app/utils/env/env_variables.dart';

@JS()
@staticInterop
class Position {}

extension PositionExtension on Position {
  external Coords get coords;
  external int? get timestamp;
}

@JS()
@staticInterop
class Coords {}

extension CoordsExtension on Coords {
  external double get latitude;
  external double get longitude;
  external double get accuracy;
  external double? get altitude;
  external double? get speed;
  external double? get heading;
}

@JS()
@staticInterop
class PositionError {}

extension PositionErrorExtension on PositionError {
  external String get message;
}

class DesktopUserLocationService implements LocationService {
  static DesktopUserLocationService? _instance;

  final LoggerService _loggerService;
  final EnvVariablesService _envVariablesService;

  DesktopUserLocationService._internal({
    required LoggerService loggerService,
    required EnvVariablesService envVariablesService,
  }) : _loggerService = loggerService,
       _envVariablesService = envVariablesService;

  factory DesktopUserLocationService({
    required LoggerService loggerService,
    required EnvVariablesService envVariablesService,
  }) {
    return _instance ??= DesktopUserLocationService._internal(
      loggerService: loggerService,
      envVariablesService: envVariablesService,
    );
  }

  LocationData? currentLocation;

  @override
  Stream<LocationData> get locationStream {
    final controller = StreamController<LocationData>();

    void positionCallback(Position position) {
      final loc = LocationData.fromMap({
        'latitude': position.coords.latitude,
        'longitude': position.coords.longitude,
        'accuracy': position.coords.accuracy,
        'altitude': position.coords.altitude,
        'speed': position.coords.speed,
        'heading': position.coords.heading,
      });
      controller.add(loc);
      currentLocation = loc;
    }

    void positionErrorCallback(PositionError error) {
      controller.addError(error);
    }

    // Use browser geolocation watchPosition
    final watchId = window.navigator.geolocation.watchPosition(
      positionCallback.toJS,
      positionErrorCallback.toJS,
    );

    controller.onCancel = () {
      window.navigator.geolocation.clearWatch(watchId);
      controller.close();
    };

    return controller.stream;
  }

  @override
  Future<LocationData> getUserLocation() {
    return Future.value(currentLocation!);
  }
}

getPlatformLocationService({
  LoggerService? loggerService,
  EnvVariablesService? envVariablesService,
}) {
  return DesktopUserLocationService(
    loggerService: loggerService!,
    envVariablesService: envVariablesService!,
  );
}
