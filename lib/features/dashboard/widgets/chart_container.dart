import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  final Widget child;

  const ChartContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
      child: AspectRatio(
        aspectRatio: 1.6,
        child: child,
      ),
    );
  }
}
