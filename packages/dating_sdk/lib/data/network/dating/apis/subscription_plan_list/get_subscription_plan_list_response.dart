part of 'get_subscription_plan_list_api.dart';


@JsonSerializable(explicitToJson: true)
class GetSubscriptionPlanListResponse extends BaseJson {
  final List<SubscriptionPlanModel> list;

  GetSubscriptionPlanListResponse({
    required this.list,
  });

  @override
  factory GetSubscriptionPlanListResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSubscriptionPlanListResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$GetSubscriptionPlanListResponseToJson(this);
}
