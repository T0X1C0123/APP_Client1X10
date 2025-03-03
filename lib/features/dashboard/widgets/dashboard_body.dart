import '../../home/views/home_screen.dart';
import '../views/profile_screen.dart';
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
      child: pages[selectedIndex],
    );
  }
}
