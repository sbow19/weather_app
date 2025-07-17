import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/app/app_view_model.dart';
import 'package:weather_app/ui/home/views/weather_view_scaffold.dart';
import 'package:weather_app/utils/composition/weather_composition.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});
  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {

  @override
  Widget build(BuildContext context) {
    AppViewModel appViewModel = Provider.of<AppViewModel>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => composeWeatherViewModel()),
      ],
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,

        appBar: AppBar(
          backgroundColor: Colors.black.withValues(alpha: 0),
          title: Text(
            appViewModel.getEnv("APP_NAME") ?? "ERROR",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          elevation: 0,
        ),
        body: WeatherViewScaffold(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _logoutButton(),
            ],
          ),
        ),

      ),
    );
  }
}

class _logoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppViewModel appViewModel = Provider.of<AppViewModel>(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 400;
        final buttonWidth = isSmallScreen ? constraints.maxWidth * 0.9 : 150.0;

        return SizedBox(
          width: buttonWidth,
          child: ElevatedButton(
            onPressed: () {
              appViewModel.logout();
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Colors.white.withValues(alpha: 0.2),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: isSmallScreen ? 16 : 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.white38),
              ),
              elevation: 0,
            ),
            child: const Text("Logout"),
          ),
        );
      },
    );
  }
}
