import 'package:freezed_annotation/freezed_annotation.dart';

part 'muti_stock_info.freezed.dart';

part 'muti_stock_info.g.dart';

@freezed
class MutiStockInfo with _$MutiStockInfo {
  factory MutiStockInfo({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "transaction_date") required String transactionDate,
    @JsonKey(name: "trade_volume") required int tradeVolume,
    @JsonKey(name: "number_of_transactions") required int numberOfTransactions,
    @JsonKey(name: "trade_price") required int tradePrice,
    @JsonKey(name: "opening_price") required double openingPrice,
    @JsonKey(name: "highest_price") required double highestPrice,
    @JsonKey(name: "lowest_price") required double lowestPrice,
    @JsonKey(name: "closing_price") required double closingPrice,
    @JsonKey(name: "ups_and_downs") required String upsAndDowns,
    @JsonKey(name: "price_difference") required double priceDifference,
    @JsonKey(name: "last_best_bid_price") required double lastBestBidPrice,
    @JsonKey(name: "last_best_bid_volume") required int lastBestBidVolume,
    @JsonKey(name: "last_best_ask_price") required double lastBestAskPrice,
    @JsonKey(name: "last_best_ask_volume") required int lastBestAskVolume,
    @JsonKey(name: "price_earning_ratio") required double priceEarningRatio,
  }) = _MutiStockInfo;

  factory MutiStockInfo.fromJson(Map<String, dynamic> json) =>
      _$MutiStockInfoFromJson(json);
}

/// Weather data parsed from the API response (not used directly in the UI)
@freezed
class MutiStock with _$MutiStock {
  factory MutiStock({
    @JsonKey(name: 'body') required List<MutiStockInfo> mutiStockInfo,
  }) = _MutiStock;

  factory MutiStock.fromJson(Map<String, dynamic> json) =>
      _$MutiStockFromJson(json);
}
