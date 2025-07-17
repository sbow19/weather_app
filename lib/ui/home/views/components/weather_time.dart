import 'package:flutter/material.dart';
import 'package:weather_app/data/external/model/weather_api_model.dart';
import 'package:weather_app/utils/async/aync_wrapper.dart';
import 'package:weather_app/utils/weather/weather_helper.dart';

class WeatherTime extends StatelessWidget {
  final ValueNotifier<AsyncWrapper<WeatherAPIModel>> weather;
  const WeatherTime({required this.weather, super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: weather,
      builder: (context, wrapper, _) {
        return wrapper.when(
          loading: () => const Text("Fetching time..."),
          data: (data) => Text(
            formatTime(data.current?.dt ?? 0),
            style: Theme.of(context).textTheme.displaySmall,
          ),
          error: (_, __) => const Text("Error fetching time"),
        );
      },
    );
  }
}
