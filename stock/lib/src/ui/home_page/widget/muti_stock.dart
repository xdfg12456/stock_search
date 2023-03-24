import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/src/data/model/muti_stock/muti_stock_data.dart';
import 'package:stock/src/ui/home_page/widget/date_provider.dart';
import 'package:stock/src/ui/home_page/widget/muti_stock_info_provider.dart';
import 'package:stock/src/ui/home_page/widget/stock_chart.dart';

class MutiStock extends ConsumerWidget {
  const MutiStock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mutiQuote = ref.watch(mutiStockInfoControllerProvider);
    return mutiQuote.when(
      data: (quoteData) {
        quoteData.quoteData.sort((first,second)=>first.transactionDate.compareTo(second.transactionDate));
        return StockChart(data: quoteData,);
      },
      error: (e, __) => Text(e.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
