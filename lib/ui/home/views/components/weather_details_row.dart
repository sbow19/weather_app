import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherDetailsRow extends StatelessWidget {
  final String iconPath;
  final String label;

  const WeatherDetailsRow({
    required this.iconPath,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,

            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          const SizedBox(width: 10),
          Expanded(child: Center(child: Text(label))),
        ],
      ),
    );
  }
}
