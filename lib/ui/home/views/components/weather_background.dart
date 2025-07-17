import 'package:flutter/material.dart';
import 'package:weather_app/data/external/model/weather_api_model.dart';
import 'package:weather_app/utils/async/aync_wrapper.dart';
import 'package:weather_app/utils/weather/weather_helper.dart';

class WeatherBackground extends StatelessWidget {
  final ValueNotifier<AsyncWrapper<WeatherAPIModel>> weather;

  const WeatherBackground({required this.weather, super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: weather,
      builder: (context, wrapper, _) {
        return wrapper.when(
          loading: () => _buildFallback(),
          data: (data) => Image.asset(
            getWeatherBackground(data.current!, "mobile"),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          error: (_, __) => _buildFallback(),
        );
      },
    );
  }

  Widget _buildFallback() {
    return Image.asset(
      'assets/mobile/rainy.gif',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
