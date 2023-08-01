// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_plan_list_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubscriptionPlanListRequest _$GetSubscriptionPlanListRequestFromJson(
        Map<String, dynamic> json) =>
    GetSubscriptionPlanListRequest();

Map<String, dynamic> _$GetSubscriptionPlanListRequestToJson(
        GetSubscriptionPlanListRequest instance) =>
    <String, dynamic>{};

GetSubscriptionPlanListResponse _$GetSubscriptionPlanListResponseFromJson(
        Map<String, dynamic> json) =>
    GetSubscriptionPlanListResponse(
      list: (json['list'] as List<dynamic>)
          .map((e) => SubscriptionPlanModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSubscriptionPlanListResponseToJson(
        GetSubscriptionPlanListResponse instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
