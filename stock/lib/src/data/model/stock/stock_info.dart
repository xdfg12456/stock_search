//ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_info.freezed.dart';

part "stock_info.g.dart";

// The UserData is still used, but there is no uses in this PR.
@freezed
class StockInfo with _$StockInfo {
  factory StockInfo({
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
  }) = _StockInfo;

  factory StockInfo.fromJson(Map<String, dynamic> json) =>
      _$StockInfoFromJson(json);
}
