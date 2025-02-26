import 'package:app_flutter/views/dashboard/home_screen.dart';
import 'package:app_flutter/views/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  final int selectedIndex;

  const DashboardBody({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(),
      ProfileScreen(),
    ];

    return Container(
      padding: EdgeInsets.all(16.0),
      child: pages[selectedIndex],
    );
  }
}
