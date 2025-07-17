import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/app/app_view_model.dart';
import 'package:weather_app/ui/auth/view_models/auth_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool _isObscured = true;

  void _toggleObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    AuthViewModel authState = Provider.of<AuthViewModel>(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        // Set max width for form, adjust padding for mobile vs desktop
        double formWidth = maxWidth < 600 ? maxWidth * 0.9 : 400;
        EdgeInsetsGeometry padding = maxWidth < 600
            ? const EdgeInsets.symmetric(horizontal: 16, vertical: 24)
            : const EdgeInsets.all(32);
        return Center(
          child: SingleChildScrollView(
            padding: padding,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: formWidth),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Email Field
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@')) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                    ),

                    // Spacing
                    const SizedBox(height: 16),

                    // Password Field
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleObscure,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.length < 6 ||
                            value.length > 12) {
                          return 'Password must be at least 6 and not more than 12 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),

                    // Login Button
                    authState.isLoading
                        ? CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          )
                        : ElevatedButton(
                            onPressed: () async {
                              await authState.submitLocalSignInDetails(
                                formKey,
                                _emailController.text,
                                _passwordController.text,
                                context.read<AppViewModel>().login,
                              );
                            },
                            child: const Text("Login"),
                          ),

                    const SizedBox(height: 24),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        TextButton(
                          onPressed: () {
                            authState.setAuthPage(CurrentAuthPage.signup);
                          },
                          child: const Text("Sign up"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
