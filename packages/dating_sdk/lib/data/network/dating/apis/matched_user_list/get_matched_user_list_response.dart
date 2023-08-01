part of 'get_matched_user_list_api.dart';


@JsonSerializable(explicitToJson: true)
class GetMatchedUserListResponse extends BaseJson {
  final List<MatchedUserModel> list;

  GetMatchedUserListResponse({
    required this.list,
  });

  @override
  factory GetMatchedUserListResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMatchedUserListResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$GetMatchedUserListResponseToJson(this);
}
