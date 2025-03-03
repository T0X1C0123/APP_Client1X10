import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class TableData extends StatelessWidget {
  const TableData({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      columnSpacing: 12,
      minWidth: 100,
      dividerThickness: 0,
      headingRowColor: WidgetStateColor.resolveWith(
        (states) => Color(0xFFF5F5F5),
      ),
      headingRowDecoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
      showCheckboxColumn: true,
      columns: const [
        DataColumn(label: Text('Id')),
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Age')),
        DataColumn(label: Text('Action')),
      ],
      source: DataSource(),
    );
  }
}

class DataSource extends DataTableSource {
  final List<DataRow> rows = [
    DataRow(cells: [
      DataCell(Text('1')),
      DataCell(Text('John')),
      DataCell(Text('25')),
      DataCell(Text('Edit')),
    ]),
    DataRow(cells: [
      DataCell(Text('2')),
      DataCell(Text('Sarah')),
      DataCell(Text('20')),
      DataCell(Text('Edit')),
    ]),
    DataRow(cells: [
      DataCell(Text('3')),
      DataCell(Text('giovanni')),
      DataCell(Text('30')),
      DataCell(Text('Edit')),
    ]),
    DataRow(cells: [
      DataCell(Text('4')),
      DataCell(Text('Luis')),
      DataCell(Text('22')),
      DataCell(Text('Edit')),
    ]),
    DataRow(cells: [
      DataCell(Text('5')),
      DataCell(Text('Tom')),
      DataCell(Text('27')),
      DataCell(Text('Edit')),
    ]),
    DataRow(cells: [
      DataCell(Text('6')),
      DataCell(Text('Daniel')),
      DataCell(Text('19')),
      DataCell(Text('Edit')),
    ]),
    DataRow(cells: [
      DataCell(Text('7')),
      DataCell(Text('Maria')),
      DataCell(Text('21')),
      DataCell(Text('Edit')),
    ]),
    DataRow(cells: [
      DataCell(Text('8')),
      DataCell(Text('Jose')),
      DataCell(Text('22')),
      DataCell(Text('Edit')),
    ]),
  ];

  @override
  DataRow? getRow(int index) {
    return rows[index];
  }

  @override
  int get rowCount => rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
