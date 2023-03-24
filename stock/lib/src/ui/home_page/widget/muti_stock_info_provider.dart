import 'package:stock/src/data/model/muti_stock/muti_stock_data.dart';
import 'package:stock/src/data/repositories/api_error.dart';
import 'package:stock/src/data/repositories/stock_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/src/ui/home_page/widget/num_of_data_provider.dart';
import 'package:stock/src/ui/home_page/widget/stock_code_search_box.dart';

class MutiStockInfoProvider extends StateNotifier<AsyncValue<MutiStockData>> {
  MutiStockInfoProvider(this._stockInfoRepository,
      {required this.stockCode, required this.num})
      : super(const AsyncValue.loading()) {
    getStockInfo(stockCode: stockCode, num: num);
  }

  final StockRepository _stockInfoRepository;
  final String stockCode;
  final String num;

  Future<void> getStockInfo(
      {required String stockCode, required String num}) async {
    try {
      state = const AsyncValue.loading();
      final mutiStockInfo = await _stockInfoRepository.getMutiStockInfo(
          code: stockCode, num: num);
      state = AsyncValue.data(MutiStockData.from(mutiStockInfo));
    } on APIError catch (e) {
      state = e.asASyncValue();
    }
  }
}

final mutiStockInfoControllerProvider = StateNotifierProvider.autoDispose<
    MutiStockInfoProvider, AsyncValue<MutiStockData>>((ref) {
  final userRepository = ref.watch(stockRepositoryProvider);
  final num = ref.watch(numOfDataProvider);
  final stockCode = ref.watch(stockCodeProvider);

  return MutiStockInfoProvider(userRepository, num: num["quote"].toString(), stockCode: stockCode);
});
