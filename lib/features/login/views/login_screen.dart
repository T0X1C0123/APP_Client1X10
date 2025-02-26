import '../../../core/models/user_model.dart';
import '../../../core/services/auth_service.dart';
import '../../dashboard/views/dashboard_screen.dart';
import '../widgets/login_form.dart';
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
