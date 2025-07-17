import 'package:flutter/material.dart';
import 'package:weather_app/utils/env/env_variables.dart';
import 'package:weather_app/utils/logging/logger.dart';

/// Contains global state information:
///
/// 1) Logged in                   - DONE
/// 2) Network status track         
/// 3) Logger service integrations - DONE
///

enum AppAuthState { unauthenticated, authenticated }

class AppViewModel extends ChangeNotifier {

  final LoggerService _loggerService;
  final EnvVariablesService _envVariablesService;

  AppViewModel({
    required LoggerService loggerService,
    required EnvVariablesService envVariablesService
  }): _loggerService = loggerService, _envVariablesService = envVariablesService;


  AppAuthState _appAuthState = AppAuthState.unauthenticated;

  // Getters
  AppAuthState get authState => _appAuthState;

  // Auth methods
  void login() {
    _appAuthState = AppAuthState.authenticated;
    _loggerService.i("User has logged in");
    notifyListeners();
  }

  void logout() {
    _appAuthState = AppAuthState.unauthenticated;
    _loggerService.i("User has logged out");
    notifyListeners();
  }

  // Variables fetch via EnvVariablesService instance
  String? getEnv(String envName){
    return _envVariablesService.getEnv(envName);
  }
}
