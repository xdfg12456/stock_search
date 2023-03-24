import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stock/src/data/model/three_legal_person/three_legal_person_data.dart';

class SharesChart extends StatelessWidget {
  const SharesChart({Key? key, required this.data}) : super(key: key);

  final ThreeLegalPersonData data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BarChart(_BarChartData(data)));
  }
}

BarChartData _BarChartData(ThreeLegalPersonData data) {
  return BarChartData(
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
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
          ),
        ),
      ),
      barGroups: data.threeLegalPersonData
          .map(
            (e) => generateBarGroup(
                DateTime.parse(e.transactionDate)
                    .microsecondsSinceEpoch
                    .toDouble(),
                [
                  e.overseasShares,
                  e.creditExcessShares,
                  e.proprietaryExcessShares,
                  e.sumOfExcessShares
                ]),
          )
          .toList());
}

BarChartGroupData generateBarGroup(
  double x,
  List<int> value,
) {
  return BarChartGroupData(
    x: x.toInt(),
    barRods: [
      BarChartRodData(
        toY: value[0].toDouble(),
        color: Colors.blue,
        width: 20,
      ),
      BarChartRodData(
        toY: value[1].toDouble(),
        color: Colors.red,
        width: 20,
      ),
      BarChartRodData(
        toY: value[2].toDouble(),
        color: Colors.yellow,
        width: 20,
      ),
      BarChartRodData(
        toY: value[3].toDouble(),
        color: Colors.green,
        width: 20,
      ),
    ],
  );
}
