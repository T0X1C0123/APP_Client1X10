import '../../welcome/views/welcome_screen.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/dashboard_app_bar.dart';
import '../widgets/dashboard_body.dart';
import '../widgets/dashboard_drawer.dart';
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
