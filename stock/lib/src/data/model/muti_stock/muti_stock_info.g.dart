// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muti_stock_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MutiStockInfo _$$_MutiStockInfoFromJson(Map<String, dynamic> json) =>
    _$_MutiStockInfo(
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

Map<String, dynamic> _$$_MutiStockInfoToJson(_$_MutiStockInfo instance) =>
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

_$_MutiStock _$$_MutiStockFromJson(Map<String, dynamic> json) => _$_MutiStock(
      mutiStockInfo: (json['body'] as List<dynamic>)
          .map((e) => MutiStockInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MutiStockToJson(_$_MutiStock instance) =>
    <String, dynamic>{
      'body': instance.mutiStockInfo,
    };
