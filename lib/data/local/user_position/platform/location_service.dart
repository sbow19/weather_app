import 'package:location/location.dart';

abstract class LocationService {
  LocationService();

  Stream<LocationData> get locationStream;
  Future<LocationData> getUserLocation();
}
