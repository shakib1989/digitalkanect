part of 'get_balance_api.dart';

@JsonSerializable(explicitToJson: true)
class GetBalanceRequest extends BaseJson {

  GetBalanceRequest();

  @override
  factory GetBalanceRequest.fromJson(Map<String, dynamic> json) =>
      _$GetBalanceRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GetBalanceRequestToJson(this);
}
