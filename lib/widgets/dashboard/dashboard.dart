import 'package:app_flutter/views/welcome/welcome_screen.dart';
import 'package:app_flutter/widgets/dashboard/bottom_navigation.dart';
import 'package:app_flutter/widgets/dashboard/dashboard_app_bar.dart';
import 'package:app_flutter/widgets/dashboard/dashboard_body.dart';
import 'package:app_flutter/widgets/dashboard/dashboard_drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String email;

  const Dashboard({super.key, required this.email});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logout(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => WelcomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      drawer: DashboardDrawer(
        email: widget.email,
        onLogout: () => _logout(context),
      ),
      body: DashboardBody(selectedIndex: _selectedIndex),
      bottomNavigationBar: BottomNavigation(
        onTabSelected: _onItemTapped,
      ),
    );
  }
}
