import '../widgets/dashboard_bar_chart.dart';
import '../widgets/chart_container.dart';
import '../widgets/dashboard_pie_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(6),
      children: [
        ChartContainer(
          child: DashboardBarChart(),
        ),
        const SizedBox(height: 20),
        ChartContainer(
          child: DashboardPieChart(),
        ),
      ],
    );
  }
}
