// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_balance_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBalanceRequest _$GetBalanceRequestFromJson(Map<String, dynamic> json) =>
    GetBalanceRequest();

Map<String, dynamic> _$GetBalanceRequestToJson(GetBalanceRequest instance) =>
    <String, dynamic>{};

GetBalanceResponse _$GetBalanceResponseFromJson(Map<String, dynamic> json) =>
    GetBalanceResponse(
      data: BalanceModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetBalanceResponseToJson(GetBalanceResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
