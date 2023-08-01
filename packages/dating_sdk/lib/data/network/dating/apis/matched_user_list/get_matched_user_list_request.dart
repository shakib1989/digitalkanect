part of 'get_matched_user_list_api.dart';

@JsonSerializable(explicitToJson: true)
class GetMatchedUserListRequest extends BaseJson {
  final int page;
  final int limit;

  GetMatchedUserListRequest({
    required this.page,
    required this.limit,
  });

  @override
  factory GetMatchedUserListRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMatchedUserListRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GetMatchedUserListRequestToJson(this);
}
