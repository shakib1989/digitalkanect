part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class SubscriptionPlanModel {
  String id;
  String currencySymbol;
  String currencyName;
  int currencyDecimal;
  int amount;
  int messages;
  int phoneCallInSec;
  int videoCallInSec;

  SubscriptionPlanModel({
    this.id = '',
    this.currencySymbol = '',
    this.currencyName = '',
    this.currencyDecimal = 0,
    this.amount = 0,
    this.messages = 0,
    this.phoneCallInSec = 0,
    this.videoCallInSec = 0,
  });

  @override
  factory SubscriptionPlanModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionPlanModelToJson(this);
}
