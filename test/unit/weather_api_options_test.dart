import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/external/weather_api_service.dart';
void main() {
  group('WeatherAPIOptions.getQueryParameters', () {
    const apiKey = 'FAKE_API_KEY';

    test('returns correct params with metric units and excluded parts', () {
      final options = WeatherAPIOptions(
        lat: 12.34,
        lon: 56.78,
        units: WeatherAPIUnits.metric,
        excludedParts: [WeatherAPIParts.hourly, WeatherAPIParts.daily],
      );

      final result = options.getQueryParameters(apiKey);

      expect(result['lat'], '12.34');
      expect(result['lon'], '56.78');
      expect(result['units'], 'metric');
      expect(result['exclude'], 'WeatherAPIParts.hourly,WeatherAPIParts.daily');
      expect(result['appid'], apiKey);
    });

    test('returns correct params with imperial units and no exclusions', () {
      final options = WeatherAPIOptions(
        lat: 90.0,
        lon: -45.0,
        units: WeatherAPIUnits.imperial,
        excludedParts: [],
      );

      final result = options.getQueryParameters(apiKey);

      expect(result['lat'], '90.0');
      expect(result['lon'], '-45.0');
      expect(result['units'], 'imperial');
      expect(result.containsKey('exclude'), false); // no 'exclude' key
      expect(result['appid'], apiKey);
    });

    test('returns correct units for standard', () {
      final options = WeatherAPIOptions(
        lat: 0.0,
        lon: 0.0,
        units: WeatherAPIUnits.standard,
        excludedParts: [],
      );

      final result = options.getQueryParameters(apiKey);

      expect(result['units'], 'standard');
    });
  });
}
