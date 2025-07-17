import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/app/app_view_model.dart';
import 'package:weather_app/utils/composition/app_composition.dart';
import 'package:weather_app/utils/composition/auth_composition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialise AppViewModel
  AppViewModel appViewModel = await composeAppViewModel();

  // Fix in landscape mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Build widget tree
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => appViewModel),
        
        ChangeNotifierProvider(create: (_) => composeAuthViewModel()),
      ],
      child: MyApp(),
    ),
  );
}
