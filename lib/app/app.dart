import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/app/app_view_model.dart';
import 'package:weather_app/ui/auth/views/auth_scaffold.dart';
import 'package:weather_app/ui/home/views/home_scaffold.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appViewModel = Provider.of<AppViewModel>(context);
    Widget homeWidget;

    switch (appViewModel.authState) {
      case AppAuthState.unauthenticated:
        homeWidget = AuthScaffold();
        break;
      case AppAuthState.authenticated:
        homeWidget = HomeScaffold();
        break;
    }

    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      home: homeWidget,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            shadows: [
              Shadow(
                offset: Offset(1, 1),
                blurRadius: 4,
                color: Colors.black54,
              ),
            ],
          ),
          displayLarge: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 6,
                color: Colors.black87,
              ),
            ],
          ),
          displayMedium: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 6,
                color: Colors.black87,
              ),
            ],
          ),
          displaySmall: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 6,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
