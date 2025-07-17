import 'package:flutter/material.dart';
import 'package:weather_app/data/external/model/weather_api_model.dart';
import 'package:weather_app/ui/home/views/components/weather_details_row.dart';
import 'package:weather_app/utils/async/aync_wrapper.dart';
import 'package:weather_app/utils/weather/weather_helper.dart';
import 'dart:math';

class WeatherDetails extends StatelessWidget {
  final ValueNotifier<AsyncWrapper<WeatherAPIModel>> weather;

  const WeatherDetails({required this.weather, super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: weather,
      builder: (context, wrapper, _) {
        return wrapper.when(
          loading: () => const Text("Loading details..."),
          data: (data) {
            final current = data.current!;
            return LayoutBuilder(
              builder: (context, constraints) {
                final isSmallScreen = constraints.maxWidth < 400;
                final detailsWidth = isSmallScreen
                    ? constraints.maxWidth * 0.9
                    : min(constraints.maxWidth * 0.9, 500).toDouble();
                return SizedBox(
                  width: detailsWidth,

                  child: Column(
                    children: [
                      WeatherDetailsRow(
                        iconPath: 'assets/icons/thermometer.svg',
                        label:
                            "${getTempDescription(current.temp ?? 0)} temperature",
                      ),
                      WeatherDetailsRow(
                        iconPath: 'assets/icons/wind.svg',
                        label: getWindDescription(current.windSpeed ?? 0.0),
                      ),
                      WeatherDetailsRow(
                        iconPath: 'assets/icons/cloud.svg',
                        label: getCloudDescription(current.clouds ?? 0),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          error: (_, __) => const Text("Error loading details"),
        );
      },
    );
  }
}
