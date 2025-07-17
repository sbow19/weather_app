import 'package:http/http.dart' as http;
import 'package:weather_app/data/external/weather_service.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

///
/// Open Weather API docs here https://openweathermap.org/api/one-call-3#current
///
class WeatherAPIService implements WeatherService {
  final http.Client httpClient;
  final EnvVariablesService envVariablesService;
  final LoggerService loggerService;

  WeatherAPIService({
    required this.httpClient,
    required this.envVariablesService,
    required this.loggerService,
  });

  // Return raw http response
  @override
  Future<http.Response> queryWeatherAPI({
    required WeatherAPIOptions options,
    String? id,
  }) async {
    http.Response response;

    // Get API key
    String API_KEY = envVariablesService.getEnv("API_KEY")!;

    // Generate uri with options
    final uri = Uri.https(
      "api.openweathermap.org",
      "/data/3.0/onecall",
      options.getQueryParameters(API_KEY),
    );

    loggerService.i(uri.toString());

    response = await httpClient.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }
}

enum WeatherAPIUnits { standard, metric, imperial }

enum WeatherAPIParts { current, minutely, hourly, daily, alerts }

class WeatherAPIOptions {
  // Query parameters
  final double lat;
  final double lon;
  final WeatherAPIUnits units;
  final List<WeatherAPIParts> excludedParts;

  WeatherAPIOptions({
    required this.lat,
    required this.lon,
    required this.units,
    required this.excludedParts,
  });

  Map<String, String> getQueryParameters(String API_KEY) {
    Map<String, String> body = {};

    if (excludedParts.isNotEmpty) {
      body['exclude'] = excludedParts.join(",");
    }

    body['lat'] = "$lat";

    body['lon'] = "$lon";

    switch (units) {
      case WeatherAPIUnits.imperial:
        body['units'] = "imperial";
        break;
      case WeatherAPIUnits.metric:
        body['units'] = "metric";
        break;
      case WeatherAPIUnits.standard:
        body['units'] = "standard";
        break;
    }

    body['appid'] = API_KEY;

    return body;
  }
}
