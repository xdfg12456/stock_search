import 'stock_info.dart';

// The UserData is still used, but there is no uses in this PR.
class StockData {
  final String code;
  final String transactionDate;
  final int tradeVolume;
  final int numberOfTransactions;
  final int tradePrice;
  final double openingPrice;
  final double highestPrice;
  final double lowestPrice;
  final double closingPrice;
  final String upsAndDowns;
  final double priceDifference;
  final double lastBestBidPrice;
  final int lastBestBidVolume;
  final double lastBestAskPrice;
  final int lastBestAskVolume;
  final double priceEarningRati;

  StockData({
    required this.code,
    required this.closingPrice,
    required this.highestPrice,
    required this.lastBestAskPrice,
    required this.lastBestAskVolume,
    required this.lastBestBidPrice,
    required this.lastBestBidVolume,
    required this.lowestPrice,
    required this.numberOfTransactions,
    required this.openingPrice,
    required this.priceDifference,
    required this.priceEarningRati,
    required this.tradePrice,
    required this.tradeVolume,
    required this.transactionDate,
    required this.upsAndDowns,
  });

  factory StockData.from(StockInfo stock) {
    return StockData(
      code: stock.code,
      closingPrice: stock.closingPrice,
      highestPrice: stock.highestPrice,
      lastBestAskPrice: stock.lastBestAskPrice,
      lastBestAskVolume: stock.lastBestAskVolume,
      lastBestBidPrice: stock.lastBestBidPrice,
      lastBestBidVolume: stock.lastBestBidVolume,
      lowestPrice: stock.lowestPrice,
      numberOfTransactions: stock.numberOfTransactions,
      openingPrice: stock.openingPrice,
      priceDifference: stock.priceDifference,
      priceEarningRati: stock.priceEarningRatio,
      tradePrice: stock.tradePrice,
      tradeVolume: stock.tradeVolume,
      transactionDate: stock.transactionDate,
      upsAndDowns: stock.upsAndDowns,
    );
  }

  List<String> toList() {
    return [ this.code,
      this.closingPrice.toString(),
      this.highestPrice.toString(),
      this.lastBestAskPrice.toString(),
      this.lastBestAskVolume.toString(),
      this.lastBestBidPrice.toString(),
      this.lastBestBidVolume.toString(),
      this.lowestPrice.toString(),
      this.numberOfTransactions.toString(),
      this.openingPrice.toString(),
      this.priceDifference.toString(),
      this.priceEarningRati.toString(),
      this.tradePrice.toString(),
      this.tradeVolume.toString(),
      this.transactionDate.toString(),
      this.upsAndDowns,
    ];
  }
}
