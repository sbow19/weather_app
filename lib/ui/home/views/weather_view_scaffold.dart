import 'package:flutter/material.dart';
import 'package:weather_app/ui/home/views/desktop_weather_layout.dart';
import 'package:weather_app/ui/home/views/mobile_weather_layout.dart';

class WeatherViewScaffold extends StatefulWidget {
  const WeatherViewScaffold({super.key});

  @override
  State<WeatherViewScaffold> createState() => _WeatherViewScaffoldState();
}

class _WeatherViewScaffoldState extends State<WeatherViewScaffold> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return MobileWeatherLayout();
        } else {
          return DesktopWeatherLayout();
        }
      },
    );
  }
}
