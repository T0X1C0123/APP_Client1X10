import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardBarChart extends StatelessWidget {
  const DashboardBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitlesWidget.bottomTitles(),
          leftTitles: AxisTitlesWidget.leftTitles(),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        barGroups: BarChartGroups.getBarGroups(),
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        maxY: 20,
      ),
    );
  }
}

class AxisTitlesWidget {
  static AxisTitles bottomTitles() {
    return AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: (double value, TitleMeta meta) {
          const style = TextStyle(
            color: Colors.black26,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          );
          String text;
          switch (value.toInt()) {
            case 2:
              text = 'jan 6';
              break;
            case 4:
              text = 'jan 8';
              break;
            case 6:
              text = 'jan 10';
              break;
            case 8:
              text = 'jan 12';
              break;
            case 10:
              text = 'jan 14';
              break;
            case 12:
              text = 'jan 16';
              break;
            case 14:
              text = 'jan 18';
              break;
            default:
              text = '';
              break;
          }
          return SideTitleWidget(
            meta: meta,
            space: 4,
            child: Text(text, style: style),
          );
        },
      ),
    );
  }

  static AxisTitles leftTitles() {
    return AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: (double value, TitleMeta meta) {
          const style = TextStyle(
            color: Colors.black26,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          );
          String text;
          switch (value.toInt()) {
            case 15:
              text = '1K';
              break;
            case 5:
              text = '2K';
              break;
            case 10:
              text = '3K';
              break;
            case 0:
              text = '4K';
              break;
            default:
              text = '';
              break;
          }
          return SideTitleWidget(
            meta: meta,
            space: 4,
            child: Text(text, style: style),
          );
        },
      ),
    );
  }
}

class BarChartGroups {
  static List<BarChartGroupData> getBarGroups() {
    return [
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: 11,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            toY: 3,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            toY: 12,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
            toY: 8,
            color: Color(0xFF2196F3),
            width: 16,
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
            toY: 6,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(
            toY: 10,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barRods: [
          BarChartRodData(
            toY: 16,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 8,
        barRods: [
          BarChartRodData(
            toY: 6,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 9,
        barRods: [
          BarChartRodData(
            toY: 4,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 10,
        barRods: [
          BarChartRodData(
            toY: 9,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 11,
        barRods: [
          BarChartRodData(
            toY: 12,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 12,
        barRods: [
          BarChartRodData(
            toY: 2,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 13,
        barRods: [
          BarChartRodData(
            toY: 13,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
      BarChartGroupData(
        x: 14,
        barRods: [
          BarChartRodData(
            toY: 15,
            color: Color(0xFF2196F3),
            width: 16,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
    ];
  }
}
