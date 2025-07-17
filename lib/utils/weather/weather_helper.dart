import 'package:intl/intl.dart';
import 'package:weather_app/data/external/model/weather_api_model.dart';

String formatTime(int dt) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  return DateFormat.Hm().format(dateTime);
}

String getTempDescription(double tempC) {
  if (tempC < 0) return "Freezing cold";
  if (tempC < 10) return "Very cold";
  if (tempC < 18) return "Cool";
  if (tempC < 26) return "Comfortable";
  if (tempC < 33) return "Warm";
  return "Hot";
}

String getHumidityDescription(int? humidity) {
  if (humidity == null) return "Unknown";
  if (humidity < 30) return "Dry";
  if (humidity <= 60) return "Comfortable";
  return "Humid";
}

String getWindDescription(double speed) {
  if (speed < 1.5) return "Calm";
  if (speed < 5) return "Light breeze";
  if (speed < 10) return "Windy";
  if (speed > 10) return "Very windy";
  return "Calm";
}

String getCloudDescription(int? cloudPercent) {
  if (cloudPercent == null) return "Unknown cloud cover";
  if (cloudPercent <= 10) return "Clear skies";
  if (cloudPercent <= 50) return "Partly cloudy";
  if (cloudPercent <= 90) return "Mostly cloudy";
  return "Overcast";
}

String buildWeatherSummary({
  required double temp,
  required int humidity,
  required double windSpeed,
  required int clouds,
  required double uvi,
}) {
  return "${getTempDescription(temp)} with ${getHumidityDescription(humidity)} air, "
      "${getWindDescription(windSpeed)}, and ${getCloudDescription(clouds)}. ";
}

String getWeatherBackground(
  Current current,
  String device
) {
  final main = current.weather?.first.main?.toLowerCase() ?? '';
  final isNight =
      current.sunrise != null &&
      current.sunset != null &&
      (current.dt < current.sunrise! || current.dt > current.sunset!);

  if (main.contains('clear')) {
    return 'assets/$device/clear.jpg';
  } else if (main.contains('cloud')) {
    return 'assets/$device/cloudy.jpg';
  } else if (main.contains('rain')) {
    return 'assets/$device/rainy.gif';
  } else if (main.contains('snow')) {
    return  'assets/$device/snow.jpg';
      
  } else if (main.contains('thunderstorm')) {
    return 'assets/$device/thunderstorm.jpg';
  } else if (main.contains('mist') ||
      main.contains('fog') ||
      main.contains('haze')) {
    return 'assets/$device/fog.jpg';
  }

  // Fallback to generic day/night
  return isNight
      ? 'assets/$device/night.jpg'
      : 'assets/$device/rainy.gif';
}
