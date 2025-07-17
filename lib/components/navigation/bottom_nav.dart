import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNav({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation:0,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      backgroundColor: Colors.black.withValues(alpha: 0),
      selectedItemColor: Colors.white,
      selectedFontSize: 15,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.wb_sunny),
          label: "Your Weather",
        ),
      ],
    );
  }
}