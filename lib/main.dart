import 'package:flutter/material.dart';
import 'views/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'traslado médico',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
