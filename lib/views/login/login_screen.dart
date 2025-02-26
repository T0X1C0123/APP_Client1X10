import 'package:app_flutter/models/user_model.dart';
import 'package:app_flutter/services/auth_service.dart';
import 'package:app_flutter/views/dashboard/dashboard_screen.dart';
import 'package:app_flutter/widgets/login/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _authService = AuthService();

  Future<void> _handleLogin(User user) async {
    bool isAuthenticated = await _authService.login(user);

    if (isAuthenticated && mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashboardScreen(email: user.email),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoginForm(
      onLogin: (user) => _handleLogin(user),
    );
  }
}
