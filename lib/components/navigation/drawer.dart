import 'dart:ui';

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
    
      backgroundColor: Colors.black.withValues(alpha:0.6),
      elevation: 1,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 25,
          
        ),
      ),
    );
  }
}