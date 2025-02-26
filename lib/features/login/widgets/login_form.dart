import 'package:flutter/material.dart';
// import '../../models/user_model.dart';
import '../../../core/models/user_model.dart';
import '../../signup/views/signup_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.onLogin});

  final Function(User) onLogin;

  @override
  State<LoginForm> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Procesando...'),
        ),
      );

      final user = User(
        email: _emailController.text,
        password: _passwordController.text,
      );
      widget.onLogin(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            _buildBackground(),
            _buildFormContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffB81736),
            Color(0xff281537),
          ],
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 60.0, left: 22),
        child: Text(
          'Hello\nSign in!',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildFormContainer() {
    return Padding(
      padding: const EdgeInsets.only(top: 180.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildEmailField(),
                _buildPasswordField(),
                const SizedBox(height: 20),
                _buildForgotPassword(),
                const SizedBox(height: 40),
                _buildSignInButton(),
                const SizedBox(height: 50),
                _buildSignUpLink(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      decoration: const InputDecoration(
        suffixIcon: Icon(
          Icons.email,
          color: Colors.grey,
        ),
        label: Text(
          'Email',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffB81736),
          ),
        ),
      ),
      controller: _emailController,
      validator: _validateEmail,
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.visibility_off,
          color: Colors.grey,
        ),
        label: Text(
          'Password',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffB81736),
          ),
        ),
      ),
      controller: _passwordController,
      validator: _validatePassword,
    );
  }

  Widget _buildForgotPassword() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Forgot password?',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Color(0xff281537),
        ),
      ),
    );
  }

  Widget _buildSignInButton() {
    return InkWell(
      onTap: _submitForm,
      child: Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ],
          ),
        ),
        child: const Center(
          child: Text(
            'SIGN IN',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpLink() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        children: [
          const Text(
            'Don\'t have an account?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              );
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Correo inválido';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Contraseña inválida';
    }
    return null;
  }
}
