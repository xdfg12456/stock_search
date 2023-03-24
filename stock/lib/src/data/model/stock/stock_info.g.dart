// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockInfo _$$_StockInfoFromJson(Map<String, dynamic> json) => _$_StockInfo(
      code: json['code'] as String,
      transactionDate: json['transaction_date'] as String,
      tradeVolume: json['trade_volume'] as int,
      numberOfTransactions: json['number_of_transactions'] as int,
      tradePrice: json['trade_price'] as int,
      openingPrice: (json['opening_price'] as num).toDouble(),
      highestPrice: (json['highest_price'] as num).toDouble(),
      lowestPrice: (json['lowest_price'] as num).toDouble(),
      closingPrice: (json['closing_price'] as num).toDouble(),
      upsAndDowns: json['ups_and_downs'] as String,
      priceDifference: (json['price_difference'] as num).toDouble(),
      lastBestBidPrice: (json['last_best_bid_price'] as num).toDouble(),
      lastBestBidVolume: json['last_best_bid_volume'] as int,
      lastBestAskPrice: (json['last_best_ask_price'] as num).toDouble(),
      lastBestAskVolume: json['last_best_ask_volume'] as int,
      priceEarningRatio: (json['price_earning_ratio'] as num).toDouble(),
    );

Map<String, dynamic> _$$_StockInfoToJson(_$_StockInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'transaction_date': instance.transactionDate,
      'trade_volume': instance.tradeVolume,
      'number_of_transactions': instance.numberOfTransactions,
      'trade_price': instance.tradePrice,
      'opening_price': instance.openingPrice,
      'highest_price': instance.highestPrice,
      'lowest_price': instance.lowestPrice,
      'closing_price': instance.closingPrice,
      'ups_and_downs': instance.upsAndDowns,
      'price_difference': instance.priceDifference,
      'last_best_bid_price': instance.lastBestBidPrice,
      'last_best_bid_volume': instance.lastBestBidVolume,
      'last_best_ask_price': instance.lastBestAskPrice,
      'last_best_ask_volume': instance.lastBestAskVolume,
      'price_earning_ratio': instance.priceEarningRatio,
    };
