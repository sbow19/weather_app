import 'package:http/http.dart' as http;
import 'weather_api_service.dart'; // for WeatherAPIOptions

abstract class WeatherService {
  Future<http.Response> queryWeatherAPI({
    required WeatherAPIOptions options,
    String? id,
  });
}
