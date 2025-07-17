import 'package:flutter/material.dart';
import 'package:weather_app/data/external/model/weather_api_model.dart';
import 'package:weather_app/utils/async/aync_wrapper.dart';

class WeatherTemperature extends StatelessWidget {
  final ValueNotifier<AsyncWrapper<WeatherAPIModel>> weather;

  const WeatherTemperature({required this.weather, super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: weather,
      builder: (context, wrapper, _) {
        return wrapper.when(
          loading: () => const Text("Fetching location..."),
          data: (data) => Text(
            "${data.current?.temp?.floor() ?? 0}°C",
            style: Theme.of(context).textTheme.displayLarge
            
          ),
          error: (_, __) => const Text("Error fetching location"),
        );
      },
    );
  }
}
