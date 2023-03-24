import 'muti_stock_info.dart';

class MutiStockData {
  final List<MutiStockInfo> quoteData;

  MutiStockData({
    required this.quoteData,
  });

  factory MutiStockData.from(MutiStock mutiStock){
    return MutiStockData(quoteData: mutiStock.mutiStockInfo);
  }
}
