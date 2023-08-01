// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceModel _$BalanceModelFromJson(Map<String, dynamic> json) => BalanceModel(
      id: json['id'] as String? ?? '',
      messages: json['messages'] as int? ?? 0,
      phoneCallInSec: json['phoneCallInSec'] as int? ?? 0,
      videoCallInSec: json['videoCallInSec'] as int? ?? 0,
    );

Map<String, dynamic> _$BalanceModelToJson(BalanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages,
      'phoneCallInSec': instance.phoneCallInSec,
      'videoCallInSec': instance.videoCallInSec,
    };

MatchedUserModel _$MatchedUserModelFromJson(Map<String, dynamic> json) =>
    MatchedUserModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
      online: json['online'] as bool? ?? true,
      favorite: json['favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$MatchedUserModelToJson(MatchedUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
      'imageUrl': instance.imageUrl,
      'online': instance.online,
      'favorite': instance.favorite,
    };

SubscriptionPlanModel _$SubscriptionPlanModelFromJson(
        Map<String, dynamic> json) =>
    SubscriptionPlanModel(
      id: json['id'] as String? ?? '',
      currencySymbol: json['currencySymbol'] as String? ?? '',
      currencyName: json['currencyName'] as String? ?? '',
      currencyDecimal: json['currencyDecimal'] as int? ?? 0,
      amount: json['amount'] as int? ?? 0,
      messages: json['messages'] as int? ?? 0,
      phoneCallInSec: json['phoneCallInSec'] as int? ?? 0,
      videoCallInSec: json['videoCallInSec'] as int? ?? 0,
    );

Map<String, dynamic> _$SubscriptionPlanModelToJson(
        SubscriptionPlanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currencySymbol': instance.currencySymbol,
      'currencyName': instance.currencyName,
      'currencyDecimal': instance.currencyDecimal,
      'amount': instance.amount,
      'messages': instance.messages,
      'phoneCallInSec': instance.phoneCallInSec,
      'videoCallInSec': instance.videoCallInSec,
    };
