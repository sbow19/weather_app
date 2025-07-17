import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/utils/weather/weather_helper.dart';

void main() {
  group('formatTime', () {
    test('formats timestamp to HH:mm', () {
      final result = formatTime(1609459200); 
      expect(result, '21:00'); 
    });
  });

  group('getTempDescription', () {
    test('returns correct temperature description', () {
      expect(getTempDescription(-5), 'Freezing cold');
      expect(getTempDescription(5), 'Very cold');
      expect(getTempDescription(15), 'Cool');
      expect(getTempDescription(23), 'Comfortable');
      expect(getTempDescription(30), 'Warm');
      expect(getTempDescription(40), 'Hot');
    });
  });

  group('getHumidityDescription', () {
    test('returns correct humidity description', () {
      expect(getHumidityDescription(null), 'Unknown');
      expect(getHumidityDescription(20), 'Dry');
      expect(getHumidityDescription(45), 'Comfortable');
      expect(getHumidityDescription(80), 'Humid');
    });
  });

  group('getWindDescription', () {
    test('returns correct wind description', () {
      expect(getWindDescription(0.5), 'Calm');
      expect(getWindDescription(3), 'Light breeze');
      expect(getWindDescription(8), 'Windy');
      expect(getWindDescription(12), 'Very windy');
    });
  });

  group('getCloudDescription', () {
    test('returns correct cloud cover description', () {
      expect(getCloudDescription(null), 'Unknown cloud cover');
      expect(getCloudDescription(5), 'Clear skies');
      expect(getCloudDescription(30), 'Partly cloudy');
      expect(getCloudDescription(75), 'Mostly cloudy');
      expect(getCloudDescription(95), 'Overcast');
    });
  });

  group('buildWeatherSummary', () {
    test('builds a readable weather summary string', () {
      final result = buildWeatherSummary(
        temp: 24,
        humidity: 50,
        windSpeed: 3,
        clouds: 40,
        uvi: 5,
      );
      expect(result, contains('Comfortable'));
      expect(result, contains('Comfortable air'));
      expect(result, contains('Light breeze'));
      expect(result, contains('Partly cloudy'));
    });
  });
}
