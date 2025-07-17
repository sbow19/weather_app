import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/app/app_view_model.dart';
import 'package:weather_app/components/navigation/bottom_nav.dart';
import 'package:weather_app/components/navigation/drawer.dart';
import 'package:weather_app/ui/home/view_models/weather_view_model.dart';
import 'package:weather_app/ui/home/views/weather_view_scaffold.dart';
import 'package:weather_app/utils/composition/weather_composition.dart';

final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});
  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  // Current home page view. Accessed by navigation tab
  int selectedIndex = 0;

  // List of home widgets
  final List<Widget> _screens = [WeatherViewScaffold()];

  @override
  Widget build(BuildContext context) {
    AppViewModel appViewModel = Provider.of<AppViewModel>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => composeWeatherViewModel()),
      ],
      child: Scaffold(
        key: homeScaffoldKey,
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
        body: IndexedStack(index: selectedIndex, children: _screens),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _logoutButton(),
            ],
          ),
        ),

        // drawer: AppDrawer(),
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
