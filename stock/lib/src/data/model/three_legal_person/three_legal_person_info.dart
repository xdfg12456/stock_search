import 'package:freezed_annotation/freezed_annotation.dart';

part 'three_legal_person_info.freezed.dart';

part 'three_legal_person_info.g.dart';

@freezed
class ThreeLegalPersonInfo with _$ThreeLegalPersonInfo {
  factory ThreeLegalPersonInfo({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "transaction_date") required String transactionDate,
    @JsonKey(name: "overseas_shares") required int overseasShares,
    @JsonKey(name: "credit_excess_shares") required int creditExcessShares,
    @JsonKey(name: "proprietary_excess_shares") required int proprietaryExcessShares,
    @JsonKey(name: "sum_of_excess_shares") required int sumOfExcessShares,
  }) = _ThreeLegalPersonInfo;

  factory ThreeLegalPersonInfo.fromJson(Map<String, dynamic> json) =>
      _$ThreeLegalPersonInfoFromJson(json);
}

/// Weather data parsed from the API response (not used directly in the UI)
@freezed
class ThreeLegalPerson with _$ThreeLegalPerson {
  factory ThreeLegalPerson({
    @JsonKey(name: 'body') required List<ThreeLegalPersonInfo> threeLegalPersonInfo,
  }) = _ThreeLegalPerson;

  factory ThreeLegalPerson.fromJson(Map<String, dynamic> json) =>
      _$ThreeLegalPersonFromJson(json);
}
