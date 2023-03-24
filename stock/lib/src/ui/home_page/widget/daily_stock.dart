import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/src/data/model/stock/stock_data.dart';
import 'package:stock/src/ui/home_page/widget/stock_code_search_box.dart';
import 'package:stock/src/ui/home_page/widget/stock_info_provider.dart';

class DailyStock extends ConsumerWidget {
  const DailyStock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dailyQuote = ref.watch(stockInfoControllerProvider);
    return dailyQuote.when(
      data: (quoteData) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: 10, left: MediaQuery.of(context).size.width / 4),
              child: Row(
                children: [
                  _TextData(quoteData.code),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: _TextData(quoteData.transactionDate)),
                ],
              ),
            ),
            DailyStockRow(quoteData: quoteData),
          ],
        );
      },
      error: (e, __) {
        return Text(e.toString());
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class DailyStockRow extends StatelessWidget {
  const DailyStockRow({Key? key, required this.quoteData}) : super(key: key);

  final StockData quoteData;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Table(
        border: TableBorder.all(
          width: 2,
          borderRadius: BorderRadius.circular(10),
        ),
        defaultColumnWidth: FixedColumnWidth(100),
        children: [
          TableRow(
            children: [
              _TextData("收盤價", isTitle: true),
              _TextData("最高價", isTitle: true),
              _TextData("最低價", isTitle: true),
              _TextData("開盤價", isTitle: true),
              _TextData("成交金額", isTitle: true),
              _TextData("成交筆數", isTitle: true),
              _TextData("成交股數", isTitle: true),
            ],
          ),
          TableRow(
            children: [
              _TextData(quoteData.closingPrice.toString()),
              _TextData(quoteData.highestPrice.toString()),
              _TextData(quoteData.lowestPrice.toString()),
              _TextData(quoteData.openingPrice.toString()),
              _TextData(quoteData.tradePrice.toString()),
              _TextData(quoteData.numberOfTransactions.toString()),
              _TextData(quoteData.tradeVolume.toString()),
            ],
          )
        ],
      ),
    );
  }
}

Container _TextData(String data, {bool isTitle = false}) {
  return Container(
    decoration: BoxDecoration(
      color: isTitle ? Colors.black : Colors.white,
    ),
    child: Center(
      heightFactor: isTitle ? 1 : 2,
      child: Text(
        data,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 15,
          color: isTitle ? Colors.white : Colors.black,
        ),
      ),
    ),
  );
}
