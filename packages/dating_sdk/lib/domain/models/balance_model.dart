part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class BalanceModel {
  String id;
  int messages;
  int phoneCallInSec;
  int videoCallInSec;

  BalanceModel({
    this.id = '',
    this.messages = 0,
    this.phoneCallInSec = 0,
    this.videoCallInSec = 0,
  });

  factory BalanceModel.empty(){
    return BalanceModel();
  }

  @override
  factory BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$BalanceModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BalanceModelToJson(this);
}
