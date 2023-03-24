import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/src/data/model/muti_stock/muti_stock_data.dart';
import 'package:stock/src/ui/home_page/widget/date_provider.dart';
import 'package:stock/src/ui/home_page/widget/muti_stock_info_provider.dart';
import 'package:stock/src/ui/home_page/widget/shares_chart.dart';
import 'package:stock/src/ui/home_page/widget/stock_chart.dart';
import 'package:stock/src/ui/home_page/widget/three_legal_person_info_provider.dart';

class ThreeLegalPerson extends ConsumerWidget {
  const ThreeLegalPerson({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final threeLegalPersonData = ref.watch(threeLegalPersonInfoControllerProvider);
    return threeLegalPersonData.when(
      data: (threeLegalPersonData) {
        threeLegalPersonData.threeLegalPersonData.sort((first,second)=>first.transactionDate.compareTo(second.transactionDate));
        return SharesChart(data: threeLegalPersonData,);
      },
      error: (e, __) => Text(e.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
