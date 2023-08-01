part of 'get_subscription_plan_list_api.dart';

@JsonSerializable(explicitToJson: true)
class GetSubscriptionPlanListRequest extends BaseJson {

  GetSubscriptionPlanListRequest();

  @override
  factory GetSubscriptionPlanListRequest.fromJson(Map<String, dynamic> json) =>
      _$GetSubscriptionPlanListRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GetSubscriptionPlanListRequestToJson(this);
}
