import 'package:app_flutter/widgets/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String email;

  const DashboardScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Dashboard(email: email);
  }
}
