// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_matched_user_list_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMatchedUserListRequest _$GetMatchedUserListRequestFromJson(
        Map<String, dynamic> json) =>
    GetMatchedUserListRequest(
      page: json['page'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$GetMatchedUserListRequestToJson(
        GetMatchedUserListRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
    };

GetMatchedUserListResponse _$GetMatchedUserListResponseFromJson(
        Map<String, dynamic> json) =>
    GetMatchedUserListResponse(
      list: (json['list'] as List<dynamic>)
          .map((e) => MatchedUserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMatchedUserListResponseToJson(
        GetMatchedUserListResponse instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
