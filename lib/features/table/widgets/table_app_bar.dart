import 'package:flutter/material.dart';

class TableAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TableAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Table',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xFF500000),
            ],
          ),
        ),
      ),
    );
  }
}
