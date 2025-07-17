import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/ui/auth/view_models/auth_view_model.dart';
import 'package:weather_app/ui/auth/views/login_view.dart';
import 'package:weather_app/ui/auth/views/signup_view.dart';

class AuthScaffold extends StatefulWidget {
  const AuthScaffold({super.key});

  @override
  State<AuthScaffold> createState() => _AuthScaffoldState();
}

class _AuthScaffoldState extends State<AuthScaffold> {
  @override
  Widget build(BuildContext context) {
    AuthViewModel authViewModel = Provider.of<AuthViewModel>(context);

    // Instantiate correct widget
    CurrentAuthPage childAuthPage = authViewModel.currentAuthPage;
    Widget child;
    switch (childAuthPage) {
      case CurrentAuthPage.login:
        child = LoginView(key: ValueKey('login'));
        break;
      case CurrentAuthPage.signup:
        child = SignupPage(key: ValueKey('signup'));
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Open Weather API!"),
        centerTitle: true, // centers the title for better symmetry
        elevation: 4, // subtle shadow
        backgroundColor: Colors.white.withValues(alpha:0.1), // pick a nice color, or use your theme's primaryColor

      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: child,
        ),
      ),
    );
  }
}
