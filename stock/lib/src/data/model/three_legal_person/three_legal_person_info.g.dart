// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'three_legal_person_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThreeLegalPersonInfo _$$_ThreeLegalPersonInfoFromJson(
        Map<String, dynamic> json) =>
    _$_ThreeLegalPersonInfo(
      code: json['code'] as String,
      transactionDate: json['transaction_date'] as String,
      overseasShares: json['overseas_shares'] as int,
      creditExcessShares: json['credit_excess_shares'] as int,
      proprietaryExcessShares: json['proprietary_excess_shares'] as int,
      sumOfExcessShares: json['sum_of_excess_shares'] as int,
    );

Map<String, dynamic> _$$_ThreeLegalPersonInfoToJson(
        _$_ThreeLegalPersonInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'transaction_date': instance.transactionDate,
      'overseas_shares': instance.overseasShares,
      'credit_excess_shares': instance.creditExcessShares,
      'proprietary_excess_shares': instance.proprietaryExcessShares,
      'sum_of_excess_shares': instance.sumOfExcessShares,
    };

_$_ThreeLegalPerson _$$_ThreeLegalPersonFromJson(Map<String, dynamic> json) =>
    _$_ThreeLegalPerson(
      threeLegalPersonInfo: (json['body'] as List<dynamic>)
          .map((e) => ThreeLegalPersonInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ThreeLegalPersonToJson(_$_ThreeLegalPerson instance) =>
    <String, dynamic>{
      'body': instance.threeLegalPersonInfo,
    };
