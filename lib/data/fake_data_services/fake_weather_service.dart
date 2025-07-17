import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/external/weather_api_service.dart';
import 'package:weather_app/data/external/weather_service.dart';

class FakeWeatherService implements WeatherService {
  @override
  Future<http.Response> queryWeatherAPI({
    required WeatherAPIOptions options,
    String? id,
  }) async {
    // Return fake response with dummy weather data
    final fakeData = {
      "lat": options.lat,
      "lon": options.lon,
      "timezone": "Galaxy/Far_Far_Away",
      "timezone_offset": 0,
      "current": {
        "dt": DateTime.now().millisecond,
        "temp": 22.5,
        "weather": [
          {"main": "clear"},
        ],
      },
    };

    return http.Response(jsonEncode(fakeData), 200);
  }
}
