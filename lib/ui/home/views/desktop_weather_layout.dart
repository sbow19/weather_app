import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/ui/home/view_models/weather_view_model.dart';
import 'package:weather_app/ui/home/views/components/weather_background.dart';
import 'package:weather_app/ui/home/views/components/weather_details.dart';
import 'package:weather_app/ui/home/views/components/weather_location.dart';
import 'package:weather_app/ui/home/views/components/weather_temperature.dart';
import 'package:weather_app/ui/home/views/components/weather_time.dart';

class DesktopWeatherLayout extends StatelessWidget {
  const DesktopWeatherLayout({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherViewModel weatherViewModel = Provider.of<WeatherViewModel>(context);

    return Stack(
      children: [
        // Background --> dynamic updates on weather changes
        WeatherBackground(weather: weatherViewModel.weather),

        Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: WeatherLocation(weather: weatherViewModel.weather),
                ),
                const SizedBox(height: 24),
                Center(
                  child: WeatherTemperature(weather: weatherViewModel.weather),
                ),
                const SizedBox(height: 16),
                // Time centered under temperature
                Center(child: WeatherTime(weather: weatherViewModel.weather)),
                const SizedBox(height: 32),

                // Details container
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: WeatherDetails(weather: weatherViewModel.weather),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
