import 'package:app_flutter/features/table/widgets/table_app_bar.dart';
import 'package:app_flutter/features/table/widgets/table_data.dart';
import 'package:flutter/material.dart';

class TableMain extends StatelessWidget {
  const TableMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TableAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: TableData(),
        ),
      ),
    );
  }
}
