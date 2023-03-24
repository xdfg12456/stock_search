class ApiService {
  ApiService(this.apiKey);

  final String apiKey;

  static const String _apiBaseUrl = "localhost";
  static const String _apiPath = "api/v1/";

  Uri retrieveDailyQuote(String code, String date) => _buildUri(
        endpoint: "retrieve_daily_quote",
        parametersBuilder: () => dailyQuoteInfoQueryParameters(code, date),
      );

  Uri retrieveNumOfQuote(String code, String num) => _buildUri(
    endpoint: "retrieve_muti_data",
    parametersBuilder: () => numOfDataQueryParameters(code, num),
  );

  Uri retrieveNumOfThreeLegalPerson(String code, String num) => _buildUri(
    endpoint: "retrieve_three_legal_people",
    parametersBuilder: () => numOfDataQueryParameters(code, num),
  );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      host: _apiBaseUrl,
      port: 3000,
      path: "$_apiPath$endpoint",
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> dailyQuoteInfoQueryParameters(code, date) => {
        "stockCode": code,
        "date": date,
        // "appid": apiKey,
      };

  Map<String, dynamic> numOfDataQueryParameters(code, num) => {
    "stockCode": code,
    "numOfData": num,
    // "appid": apiKey,
  };
}
