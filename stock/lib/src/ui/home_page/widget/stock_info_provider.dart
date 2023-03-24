import 'package:http/http.dart';
import 'package:stock/src/data/model/stock/stock_data.dart';
import 'package:stock/src/data/repositories/api_error.dart';
import 'package:stock/src/data/repositories/stock_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/src/ui/home_page/widget/date_provider.dart';
import 'package:stock/src/ui/home_page/widget/stock_code_search_box.dart';

class StockInfoProvider extends StateNotifier<AsyncValue<StockData>> {
  StockInfoProvider(this._stockInfoRepository,
      {required this.stockCode, required this.date, required this.reader})
      : super(const AsyncValue.loading()) {
    getStockInfo(stockCode: stockCode, date: date);
  }

  final StockRepository _stockInfoRepository;
  final String stockCode;
  final String date;
  final Reader reader;

  Future<void> getStockInfo(
      {required String stockCode, required String date}) async {
    try {
      state = const AsyncValue.loading();
      final userInfo =
          await _stockInfoRepository.getStockInfo(code: stockCode, date: date);
      state = AsyncValue.data(StockData.from(userInfo));
    } on APIError catch (e) {
      state = e.asASyncValue();
      reader(stockCodeProvider.notifier).state = "2330";
    }
  }
}

final stockInfoControllerProvider =
    StateNotifierProvider.autoDispose<StockInfoProvider, AsyncValue<StockData>>(
        (ref) {
  final stockRepository = ref.watch(stockRepositoryProvider);
  final date = ref.watch(dateProvider);
  final stockCode = ref.watch(stockCodeProvider);

  return StockInfoProvider(stockRepository, date: date, stockCode: stockCode, reader: ref.read);
});
