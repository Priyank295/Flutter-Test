import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constant.dart';

import '../models/salescards.dart';

TextStyle titleStyle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  color: secondaryColor,
);

class BarChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 8,
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
              // tooltipBgColor: Colors.blueAccent,
              ),
          touchCallback: (FlTouchEvent event, barTouchResponse) {},
          handleBuiltInTouches: true,
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 2,
              getTitlesWidget: (value, meta) {
                return Text(
                  '${value.toInt()}k',
                  style: TextStyle(
                    color: secondaryColor,
                    // fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return Text(
                      'Sun',
                      style: titleStyle,
                    );
                  case 1:
                    return Text('Mon', style: titleStyle);
                  case 2:
                    return Text('Tue', style: titleStyle);
                  case 3:
                    return Text('Wed', style: titleStyle);
                  case 4:
                    return Text('Thu', style: titleStyle);
                  case 5:
                    return Text('Fri', style: titleStyle);
                  case 6:
                    return Text('Sat', style: titleStyle);
                  default:
                    return Text('');
                }
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false,
        ),
        // baselineY: 0,
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: false,
          horizontalInterval: 1.99,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: secondaryColor,
              strokeWidth: 0.1,
            );
          },
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(toY: 7, color: primaryColor, width: 12.1)
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(toY: 8, color: primaryColor, width: 12.1)
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(toY: 4, color: primaryColor, width: 12.1)
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(toY: 8, color: primaryColor, width: 12.1)
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(toY: 6, color: primaryColor, width: 12.1)
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(toY: 3, color: primaryColor, width: 12.1)
            ],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(toY: 7, color: primaryColor, width: 12.1)
            ],
          ),
        ],
      ),
    );
  }
}
