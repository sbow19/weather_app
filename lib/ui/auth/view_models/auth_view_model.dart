import 'package:flutter/material.dart';
import 'package:weather_app/data/local/auth/local_sensitive_data_repository.dart';
import 'package:weather_app/utils/logging/logger.dart';

enum CurrentAuthPage { login, signup }

class AuthViewModel extends ChangeNotifier {
  // Interface with data layer, which is secure local storage
  final LocalSensitiveDataRepository _localSensitiveDataRepository;

  final LoggerService _loggerService;

  AuthViewModel({
    required LocalSensitiveDataRepository localSensitiveDataRepository,
    required LoggerService loggerService,
  }) : _localSensitiveDataRepository = localSensitiveDataRepository,
       _loggerService = loggerService;

  ///
  /// Loading spinner
  ///
  bool _isLoading = false;
  bool get isLoading {
    return _isLoading;
  }

  ///
  /// Page index
  ///
  CurrentAuthPage _currentAuthPage = CurrentAuthPage.login;
  CurrentAuthPage get currentAuthPage => _currentAuthPage;

  void setAuthPage(CurrentAuthPage targetPage) {
    _currentAuthPage = targetPage;
    notifyListeners();
  }

  Future<void> submitLocalSignInDetails(
    GlobalKey<FormState> formKey,
    String email,
    String password,
    Function? callback,
  ) async {
    try {
      // Loading spinner
      _isLoading = true;
      notifyListeners();

      if (formKey.currentState!.validate()) {
        var doesUserExist = await _localSensitiveDataRepository.doesUserExist(
          email,
        );
        if (!doesUserExist) {
          return;
        }

        var isAuthenticated = await _localSensitiveDataRepository
            .authenticateUser(email, password);
        if (!isAuthenticated) {
          return;
        }

        if (callback != null) callback();
      }
    } on Exception catch (e) {
      _loggerService.e(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> submitLocalSignUpDetails(
    GlobalKey<FormState> formKey,
    String email,
    String username,
    String password,
    Function? callback,
  ) async {
    try {
      // Loading spinner
      _isLoading = true;
      notifyListeners();

      if (formKey.currentState!.validate()) {
        await _localSensitiveDataRepository.createNewUser(email, password);

        if (callback != null) callback();
      }
    } on Exception catch (e) {
      _loggerService.e(e.toString());

    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
