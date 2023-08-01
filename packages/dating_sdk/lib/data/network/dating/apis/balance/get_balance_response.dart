part of 'get_balance_api.dart';


@JsonSerializable(explicitToJson: true)
class GetBalanceResponse extends BaseJson {
  final BalanceModel data;

  GetBalanceResponse({
    required this.data,
  });

  @override
  factory GetBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBalanceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$GetBalanceResponseToJson(this);
}
