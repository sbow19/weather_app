import 'dart:async';

import 'package:location/location.dart';
import 'package:weather_app/data/local/user_position/platform/location_service.dart';


class FakeUserLocationService implements LocationService {
  static FakeUserLocationService? _instance;

  // Singleton initialiser
  factory FakeUserLocationService() {
    _instance ??= FakeUserLocationService._internal();

    return _instance!;
  }
  FakeUserLocationService._internal();

  @override
  Stream<LocationData> get locationStream =>
      Stream<LocationData>.periodic(const Duration(seconds: 2), (count) {

        // Fake user location values
        return LocationData.fromMap({
          "latitude": -23.5505,
          "longitude": -46.6333,
        });
      });

  @override
  Future<LocationData> getUserLocation() async {
    return Future.value(
      LocationData.fromMap({
        'latitude': 0.0,
        'longitude': 0.0,
      }),
    );
  }
}
