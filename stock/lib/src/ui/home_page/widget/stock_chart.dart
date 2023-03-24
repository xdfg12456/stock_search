import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock/src/data/model/muti_stock/muti_stock_data.dart';

class StockChart extends StatelessWidget {
  const StockChart({Key? key, required this.data}) : super(key: key);

  final MutiStockData data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LineChart(
        _lineChartData(data),
      ),
    );
  }
}

LineChartData _lineChartData(MutiStockData data) {
  return LineChartData(
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(
            sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (value, mata) {
            return Text(
              value.toString(),
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
              ),
            );
          },
        )),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, mata) {
              String text = '';
              text = DateTime.fromMicrosecondsSinceEpoch(value.toInt())
                  .toString()
                  .substring(0, 10);
              return Text(
                text,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 10),
              );
            },
            interval: 4500000000000,
          ),
        ),
      ),
      gridData: FlGridData(
        show: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.black,
            strokeWidth: 1,
          );
        },
        drawVerticalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.black,
            strokeWidth: 1,
          );
        },
      ),
      borderData:
          FlBorderData(show: true, border: Border.all(color: Colors.black)),
      lineBarsData: [
        LineChartBarData(
          spots: data.quoteData
              .map((e) => FlSpot(
                  DateTime.parse(e.transactionDate)
                      .microsecondsSinceEpoch
                      .toDouble(),
                  e.closingPrice.toDouble()))
              .toList(),
          isCurved: true,
          color: Colors.red,
          dotData: FlDotData(
            show: false,
          ),
        )
      ]);
}
