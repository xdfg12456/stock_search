// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockInfo _$StockInfoFromJson(Map<String, dynamic> json) {
  return _StockInfo.fromJson(json);
}

/// @nodoc
class _$StockInfoTearOff {
  const _$StockInfoTearOff();

  _StockInfo call(
      {@JsonKey(name: "code")
          required String code,
      @JsonKey(name: "transaction_date")
          required String transactionDate,
      @JsonKey(name: "trade_volume")
          required int tradeVolume,
      @JsonKey(name: "number_of_transactions")
          required int numberOfTransactions,
      @JsonKey(name: "trade_price")
          required int tradePrice,
      @JsonKey(name: "opening_price")
          required double openingPrice,
      @JsonKey(name: "highest_price")
          required double highestPrice,
      @JsonKey(name: "lowest_price")
          required double lowestPrice,
      @JsonKey(name: "closing_price")
          required double closingPrice,
      @JsonKey(name: "ups_and_downs")
          required String upsAndDowns,
      @JsonKey(name: "price_difference")
          required double priceDifference,
      @JsonKey(name: "last_best_bid_price")
          required double lastBestBidPrice,
      @JsonKey(name: "last_best_bid_volume")
          required int lastBestBidVolume,
      @JsonKey(name: "last_best_ask_price")
          required double lastBestAskPrice,
      @JsonKey(name: "last_best_ask_volume")
          required int lastBestAskVolume,
      @JsonKey(name: "price_earning_ratio")
          required double priceEarningRatio}) {
    return _StockInfo(
      code: code,
      transactionDate: transactionDate,
      tradeVolume: tradeVolume,
      numberOfTransactions: numberOfTransactions,
      tradePrice: tradePrice,
      openingPrice: openingPrice,
      highestPrice: highestPrice,
      lowestPrice: lowestPrice,
      closingPrice: closingPrice,
      upsAndDowns: upsAndDowns,
      priceDifference: priceDifference,
      lastBestBidPrice: lastBestBidPrice,
      lastBestBidVolume: lastBestBidVolume,
      lastBestAskPrice: lastBestAskPrice,
      lastBestAskVolume: lastBestAskVolume,
      priceEarningRatio: priceEarningRatio,
    );
  }

  StockInfo fromJson(Map<String, Object?> json) {
    return StockInfo.fromJson(json);
  }
}

/// @nodoc
const $StockInfo = _$StockInfoTearOff();

/// @nodoc
mixin _$StockInfo {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_date")
  String get transactionDate => throw _privateConstructorUsedError;
  @JsonKey(name: "trade_volume")
  int get tradeVolume => throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_transactions")
  int get numberOfTransactions => throw _privateConstructorUsedError;
  @JsonKey(name: "trade_price")
  int get tradePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_price")
  double get openingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "highest_price")
  double get highestPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "lowest_price")
  double get lowestPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "closing_price")
  double get closingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "ups_and_downs")
  String get upsAndDowns => throw _privateConstructorUsedError;
  @JsonKey(name: "price_difference")
  double get priceDifference => throw _privateConstructorUsedError;
  @JsonKey(name: "last_best_bid_price")
  double get lastBestBidPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "last_best_bid_volume")
  int get lastBestBidVolume => throw _privateConstructorUsedError;
  @JsonKey(name: "last_best_ask_price")
  double get lastBestAskPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "last_best_ask_volume")
  int get lastBestAskVolume => throw _privateConstructorUsedError;
  @JsonKey(name: "price_earning_ratio")
  double get priceEarningRatio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockInfoCopyWith<StockInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockInfoCopyWith<$Res> {
  factory $StockInfoCopyWith(StockInfo value, $Res Function(StockInfo) then) =
      _$StockInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "transaction_date") String transactionDate,
      @JsonKey(name: "trade_volume") int tradeVolume,
      @JsonKey(name: "number_of_transactions") int numberOfTransactions,
      @JsonKey(name: "trade_price") int tradePrice,
      @JsonKey(name: "opening_price") double openingPrice,
      @JsonKey(name: "highest_price") double highestPrice,
      @JsonKey(name: "lowest_price") double lowestPrice,
      @JsonKey(name: "closing_price") double closingPrice,
      @JsonKey(name: "ups_and_downs") String upsAndDowns,
      @JsonKey(name: "price_difference") double priceDifference,
      @JsonKey(name: "last_best_bid_price") double lastBestBidPrice,
      @JsonKey(name: "last_best_bid_volume") int lastBestBidVolume,
      @JsonKey(name: "last_best_ask_price") double lastBestAskPrice,
      @JsonKey(name: "last_best_ask_volume") int lastBestAskVolume,
      @JsonKey(name: "price_earning_ratio") double priceEarningRatio});
}

/// @nodoc
class _$StockInfoCopyWithImpl<$Res> implements $StockInfoCopyWith<$Res> {
  _$StockInfoCopyWithImpl(this._value, this._then);

  final StockInfo _value;
  // ignore: unused_field
  final $Res Function(StockInfo) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? transactionDate = freezed,
    Object? tradeVolume = freezed,
    Object? numberOfTransactions = freezed,
    Object? tradePrice = freezed,
    Object? openingPrice = freezed,
    Object? highestPrice = freezed,
    Object? lowestPrice = freezed,
    Object? closingPrice = freezed,
    Object? upsAndDowns = freezed,
    Object? priceDifference = freezed,
    Object? lastBestBidPrice = freezed,
    Object? lastBestBidVolume = freezed,
    Object? lastBestAskPrice = freezed,
    Object? lastBestAskVolume = freezed,
    Object? priceEarningRatio = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      tradeVolume: tradeVolume == freezed
          ? _value.tradeVolume
          : tradeVolume // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfTransactions: numberOfTransactions == freezed
          ? _value.numberOfTransactions
          : numberOfTransactions // ignore: cast_nullable_to_non_nullable
              as int,
      tradePrice: tradePrice == freezed
          ? _value.tradePrice
          : tradePrice // ignore: cast_nullable_to_non_nullable
              as int,
      openingPrice: openingPrice == freezed
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      highestPrice: highestPrice == freezed
          ? _value.highestPrice
          : highestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lowestPrice: lowestPrice == freezed
          ? _value.lowestPrice
          : lowestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      closingPrice: closingPrice == freezed
          ? _value.closingPrice
          : closingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      upsAndDowns: upsAndDowns == freezed
          ? _value.upsAndDowns
          : upsAndDowns // ignore: cast_nullable_to_non_nullable
              as String,
      priceDifference: priceDifference == freezed
          ? _value.priceDifference
          : priceDifference // ignore: cast_nullable_to_non_nullable
              as double,
      lastBestBidPrice: lastBestBidPrice == freezed
          ? _value.lastBestBidPrice
          : lastBestBidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lastBestBidVolume: lastBestBidVolume == freezed
          ? _value.lastBestBidVolume
          : lastBestBidVolume // ignore: cast_nullable_to_non_nullable
              as int,
      lastBestAskPrice: lastBestAskPrice == freezed
          ? _value.lastBestAskPrice
          : lastBestAskPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lastBestAskVolume: lastBestAskVolume == freezed
          ? _value.lastBestAskVolume
          : lastBestAskVolume // ignore: cast_nullable_to_non_nullable
              as int,
      priceEarningRatio: priceEarningRatio == freezed
          ? _value.priceEarningRatio
          : priceEarningRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$StockInfoCopyWith<$Res> implements $StockInfoCopyWith<$Res> {
  factory _$StockInfoCopyWith(
          _StockInfo value, $Res Function(_StockInfo) then) =
      __$StockInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "transaction_date") String transactionDate,
      @JsonKey(name: "trade_volume") int tradeVolume,
      @JsonKey(name: "number_of_transactions") int numberOfTransactions,
      @JsonKey(name: "trade_price") int tradePrice,
      @JsonKey(name: "opening_price") double openingPrice,
      @JsonKey(name: "highest_price") double highestPrice,
      @JsonKey(name: "lowest_price") double lowestPrice,
      @JsonKey(name: "closing_price") double closingPrice,
      @JsonKey(name: "ups_and_downs") String upsAndDowns,
      @JsonKey(name: "price_difference") double priceDifference,
      @JsonKey(name: "last_best_bid_price") double lastBestBidPrice,
      @JsonKey(name: "last_best_bid_volume") int lastBestBidVolume,
      @JsonKey(name: "last_best_ask_price") double lastBestAskPrice,
      @JsonKey(name: "last_best_ask_volume") int lastBestAskVolume,
      @JsonKey(name: "price_earning_ratio") double priceEarningRatio});
}

/// @nodoc
class __$StockInfoCopyWithImpl<$Res> extends _$StockInfoCopyWithImpl<$Res>
    implements _$StockInfoCopyWith<$Res> {
  __$StockInfoCopyWithImpl(_StockInfo _value, $Res Function(_StockInfo) _then)
      : super(_value, (v) => _then(v as _StockInfo));

  @override
  _StockInfo get _value => super._value as _StockInfo;

  @override
  $Res call({
    Object? code = freezed,
    Object? transactionDate = freezed,
    Object? tradeVolume = freezed,
    Object? numberOfTransactions = freezed,
    Object? tradePrice = freezed,
    Object? openingPrice = freezed,
    Object? highestPrice = freezed,
    Object? lowestPrice = freezed,
    Object? closingPrice = freezed,
    Object? upsAndDowns = freezed,
    Object? priceDifference = freezed,
    Object? lastBestBidPrice = freezed,
    Object? lastBestBidVolume = freezed,
    Object? lastBestAskPrice = freezed,
    Object? lastBestAskVolume = freezed,
    Object? priceEarningRatio = freezed,
  }) {
    return _then(_StockInfo(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      tradeVolume: tradeVolume == freezed
          ? _value.tradeVolume
          : tradeVolume // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfTransactions: numberOfTransactions == freezed
          ? _value.numberOfTransactions
          : numberOfTransactions // ignore: cast_nullable_to_non_nullable
              as int,
      tradePrice: tradePrice == freezed
          ? _value.tradePrice
          : tradePrice // ignore: cast_nullable_to_non_nullable
              as int,
      openingPrice: openingPrice == freezed
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      highestPrice: highestPrice == freezed
          ? _value.highestPrice
          : highestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lowestPrice: lowestPrice == freezed
          ? _value.lowestPrice
          : lowestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      closingPrice: closingPrice == freezed
          ? _value.closingPrice
          : closingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      upsAndDowns: upsAndDowns == freezed
          ? _value.upsAndDowns
          : upsAndDowns // ignore: cast_nullable_to_non_nullable
              as String,
      priceDifference: priceDifference == freezed
          ? _value.priceDifference
          : priceDifference // ignore: cast_nullable_to_non_nullable
              as double,
      lastBestBidPrice: lastBestBidPrice == freezed
          ? _value.lastBestBidPrice
          : lastBestBidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lastBestBidVolume: lastBestBidVolume == freezed
          ? _value.lastBestBidVolume
          : lastBestBidVolume // ignore: cast_nullable_to_non_nullable
              as int,
      lastBestAskPrice: lastBestAskPrice == freezed
          ? _value.lastBestAskPrice
          : lastBestAskPrice // ignore: cast_nullable_to_non_nullable
              as double,
      lastBestAskVolume: lastBestAskVolume == freezed
          ? _value.lastBestAskVolume
          : lastBestAskVolume // ignore: cast_nullable_to_non_nullable
              as int,
      priceEarningRatio: priceEarningRatio == freezed
          ? _value.priceEarningRatio
          : priceEarningRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockInfo implements _StockInfo {
  _$_StockInfo(
      {@JsonKey(name: "code")
          required this.code,
      @JsonKey(name: "transaction_date")
          required this.transactionDate,
      @JsonKey(name: "trade_volume")
          required this.tradeVolume,
      @JsonKey(name: "number_of_transactions")
          required this.numberOfTransactions,
      @JsonKey(name: "trade_price")
          required this.tradePrice,
      @JsonKey(name: "opening_price")
          required this.openingPrice,
      @JsonKey(name: "highest_price")
          required this.highestPrice,
      @JsonKey(name: "lowest_price")
          required this.lowestPrice,
      @JsonKey(name: "closing_price")
          required this.closingPrice,
      @JsonKey(name: "ups_and_downs")
          required this.upsAndDowns,
      @JsonKey(name: "price_difference")
          required this.priceDifference,
      @JsonKey(name: "last_best_bid_price")
          required this.lastBestBidPrice,
      @JsonKey(name: "last_best_bid_volume")
          required this.lastBestBidVolume,
      @JsonKey(name: "last_best_ask_price")
          required this.lastBestAskPrice,
      @JsonKey(name: "last_best_ask_volume")
          required this.lastBestAskVolume,
      @JsonKey(name: "price_earning_ratio")
          required this.priceEarningRatio});

  factory _$_StockInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StockInfoFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "transaction_date")
  final String transactionDate;
  @override
  @JsonKey(name: "trade_volume")
  final int tradeVolume;
  @override
  @JsonKey(name: "number_of_transactions")
  final int numberOfTransactions;
  @override
  @JsonKey(name: "trade_price")
  final int tradePrice;
  @override
  @JsonKey(name: "opening_price")
  final double openingPrice;
  @override
  @JsonKey(name: "highest_price")
  final double highestPrice;
  @override
  @JsonKey(name: "lowest_price")
  final double lowestPrice;
  @override
  @JsonKey(name: "closing_price")
  final double closingPrice;
  @override
  @JsonKey(name: "ups_and_downs")
  final String upsAndDowns;
  @override
  @JsonKey(name: "price_difference")
  final double priceDifference;
  @override
  @JsonKey(name: "last_best_bid_price")
  final double lastBestBidPrice;
  @override
  @JsonKey(name: "last_best_bid_volume")
  final int lastBestBidVolume;
  @override
  @JsonKey(name: "last_best_ask_price")
  final double lastBestAskPrice;
  @override
  @JsonKey(name: "last_best_ask_volume")
  final int lastBestAskVolume;
  @override
  @JsonKey(name: "price_earning_ratio")
  final double priceEarningRatio;

  @override
  String toString() {
    return 'StockInfo(code: $code, transactionDate: $transactionDate, tradeVolume: $tradeVolume, numberOfTransactions: $numberOfTransactions, tradePrice: $tradePrice, openingPrice: $openingPrice, highestPrice: $highestPrice, lowestPrice: $lowestPrice, closingPrice: $closingPrice, upsAndDowns: $upsAndDowns, priceDifference: $priceDifference, lastBestBidPrice: $lastBestBidPrice, lastBestBidVolume: $lastBestBidVolume, lastBestAskPrice: $lastBestAskPrice, lastBestAskVolume: $lastBestAskVolume, priceEarningRatio: $priceEarningRatio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockInfo &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.transactionDate, transactionDate) &&
            const DeepCollectionEquality()
                .equals(other.tradeVolume, tradeVolume) &&
            const DeepCollectionEquality()
                .equals(other.numberOfTransactions, numberOfTransactions) &&
            const DeepCollectionEquality()
                .equals(other.tradePrice, tradePrice) &&
            const DeepCollectionEquality()
                .equals(other.openingPrice, openingPrice) &&
            const DeepCollectionEquality()
                .equals(other.highestPrice, highestPrice) &&
            const DeepCollectionEquality()
                .equals(other.lowestPrice, lowestPrice) &&
            const DeepCollectionEquality()
                .equals(other.closingPrice, closingPrice) &&
            const DeepCollectionEquality()
                .equals(other.upsAndDowns, upsAndDowns) &&
            const DeepCollectionEquality()
                .equals(other.priceDifference, priceDifference) &&
            const DeepCollectionEquality()
                .equals(other.lastBestBidPrice, lastBestBidPrice) &&
            const DeepCollectionEquality()
                .equals(other.lastBestBidVolume, lastBestBidVolume) &&
            const DeepCollectionEquality()
                .equals(other.lastBestAskPrice, lastBestAskPrice) &&
            const DeepCollectionEquality()
                .equals(other.lastBestAskVolume, lastBestAskVolume) &&
            const DeepCollectionEquality()
                .equals(other.priceEarningRatio, priceEarningRatio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(transactionDate),
      const DeepCollectionEquality().hash(tradeVolume),
      const DeepCollectionEquality().hash(numberOfTransactions),
      const DeepCollectionEquality().hash(tradePrice),
      const DeepCollectionEquality().hash(openingPrice),
      const DeepCollectionEquality().hash(highestPrice),
      const DeepCollectionEquality().hash(lowestPrice),
      const DeepCollectionEquality().hash(closingPrice),
      const DeepCollectionEquality().hash(upsAndDowns),
      const DeepCollectionEquality().hash(priceDifference),
      const DeepCollectionEquality().hash(lastBestBidPrice),
      const DeepCollectionEquality().hash(lastBestBidVolume),
      const DeepCollectionEquality().hash(lastBestAskPrice),
      const DeepCollectionEquality().hash(lastBestAskVolume),
      const DeepCollectionEquality().hash(priceEarningRatio));

  @JsonKey(ignore: true)
  @override
  _$StockInfoCopyWith<_StockInfo> get copyWith =>
      __$StockInfoCopyWithImpl<_StockInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockInfoToJson(this);
  }
}

abstract class _StockInfo implements StockInfo {
  factory _StockInfo(
      {@JsonKey(name: "code")
          required String code,
      @JsonKey(name: "transaction_date")
          required String transactionDate,
      @JsonKey(name: "trade_volume")
          required int tradeVolume,
      @JsonKey(name: "number_of_transactions")
          required int numberOfTransactions,
      @JsonKey(name: "trade_price")
          required int tradePrice,
      @JsonKey(name: "opening_price")
          required double openingPrice,
      @JsonKey(name: "highest_price")
          required double highestPrice,
      @JsonKey(name: "lowest_price")
          required double lowestPrice,
      @JsonKey(name: "closing_price")
          required double closingPrice,
      @JsonKey(name: "ups_and_downs")
          required String upsAndDowns,
      @JsonKey(name: "price_difference")
          required double priceDifference,
      @JsonKey(name: "last_best_bid_price")
          required double lastBestBidPrice,
      @JsonKey(name: "last_best_bid_volume")
          required int lastBestBidVolume,
      @JsonKey(name: "last_best_ask_price")
          required double lastBestAskPrice,
      @JsonKey(name: "last_best_ask_volume")
          required int lastBestAskVolume,
      @JsonKey(name: "price_earning_ratio")
          required double priceEarningRatio}) = _$_StockInfo;

  factory _StockInfo.fromJson(Map<String, dynamic> json) =
      _$_StockInfo.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "transaction_date")
  String get transactionDate;
  @override
  @JsonKey(name: "trade_volume")
  int get tradeVolume;
  @override
  @JsonKey(name: "number_of_transactions")
  int get numberOfTransactions;
  @override
  @JsonKey(name: "trade_price")
  int get tradePrice;
  @override
  @JsonKey(name: "opening_price")
  double get openingPrice;
  @override
  @JsonKey(name: "highest_price")
  double get highestPrice;
  @override
  @JsonKey(name: "lowest_price")
  double get lowestPrice;
  @override
  @JsonKey(name: "closing_price")
  double get closingPrice;
  @override
  @JsonKey(name: "ups_and_downs")
  String get upsAndDowns;
  @override
  @JsonKey(name: "price_difference")
  double get priceDifference;
  @override
  @JsonKey(name: "last_best_bid_price")
  double get lastBestBidPrice;
  @override
  @JsonKey(name: "last_best_bid_volume")
  int get lastBestBidVolume;
  @override
  @JsonKey(name: "last_best_ask_price")
  double get lastBestAskPrice;
  @override
  @JsonKey(name: "last_best_ask_volume")
  int get lastBestAskVolume;
  @override
  @JsonKey(name: "price_earning_ratio")
  double get priceEarningRatio;
  @override
  @JsonKey(ignore: true)
  _$StockInfoCopyWith<_StockInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
