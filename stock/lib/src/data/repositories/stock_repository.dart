import 'dart:convert';
import 'dart:io';
import 'package:stock/src/api/api_service.dart';
import 'package:stock/src/api/api_keys.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:stock/src/data/model/muti_stock/muti_stock_info.dart';
import 'package:stock/src/data/model/stock/stock_info.dart';
import 'package:stock/src/data/model/three_legal_person/three_legal_person_info.dart';
import 'package:stock/src/data/repositories/api_error.dart';

class StockRepository {
  StockRepository({required this.api, required this.client});

  final ApiService api;
  final http.Client client;

  Future<StockInfo> getStockInfo(
          {required String code, required String date}) =>
      _getData(
        uri: api.retrieveDailyQuote(code, date),
        builder: (data) => StockInfo.fromJson(data["body"]),
      );

  Future<MutiStock> getMutiStockInfo(
      {required String code, required String num}) =>
      _getData(
        uri: api.retrieveNumOfQuote(code, num),
        builder: (data) => MutiStock.fromJson(data),
      );

  Future<ThreeLegalPerson> getThreeLegalPerson(
      {required String code, required String num}) =>
      _getData(
        uri: api.retrieveNumOfThreeLegalPerson(code, num),
        builder: (data) => ThreeLegalPerson.fromJson(data),
      );

  Future<T> _getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get(uri);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body);
          return builder(data);
        case 404:
          throw const APIError.internetSeverError();
        default:
          throw const APIError.internetSeverError();
      }
    } on SocketException catch (_) {
      throw APIError.internetSeverError();
    }
  }
}

final stockRepositoryProvider = Provider<StockRepository>((ref) {
  /// Use the API key passed via --dart-define,
  /// or fallback to the one defined in api_keys.dart
  // set key to const
  const apiKey = String.fromEnvironment(
    'API_KEY',
    defaultValue: APIKeys.getStockInfoAPIKey,
  );
  return StockRepository(
    api: ApiService(apiKey),
    client: http.Client(),
  );
});
