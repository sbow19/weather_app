import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/app/app_view_model.dart';
import 'package:weather_app/ui/auth/view_models/auth_view_model.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<StatefulWidget> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _repeatPasswordController = TextEditingController();

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
                        if (value == null || value.isEmpty || !value.contains('@')) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    // Username Field
                    TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: 'Choose username',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid username';
                        }
                        return null;
                      },
                    ),

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
                            _isObscured ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: _toggleObscure,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.length < 6 || value.length > 12) {
                          return 'Password must be at least 6 and not more than 12 characters';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    // Repeat Password Field
                    TextFormField(
                      controller: _repeatPasswordController,
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        labelText: 'Repeat Password',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscured ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: _toggleObscure,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.length < 6 || value.length > 12) {
                          return 'Password must be at least 6 and not more than 12 characters';
                        }

                        if (value != _passwordController.text) {
                          return 'Passwords must match';
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 24),

                    // Sign up Button
                    authState.isLoading
                        ? CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          )
                        : SizedBox(
                            width: formWidth,
                            child: ElevatedButton(
                              onPressed: () async {
                                await authState.submitLocalSignUpDetails(
                                  formKey,
                                  _emailController.text,
                                  _usernameController.text,
                                  _passwordController.text,
                                  context.read<AppViewModel>().login,
                                );
                              },
                              child: const Text("Sign up"),
                            ),
                          ),
                      
                    // Back to login button
                      authState.isLoading
                        ? Center()
                        : Padding(
                          padding: const EdgeInsets.fromLTRB(0,32,0,0),
                          child: SizedBox(
                            
                              width: formWidth / 2,
                              child: ElevatedButton(
                                onPressed: ()  {
                                  authState.setAuthPage(CurrentAuthPage.login);
                                },
                                child: const Text("Back to login"),
                              ),
                            ),
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
