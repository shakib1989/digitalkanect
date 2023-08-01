import 'dart:convert';

import '../../default_imports.dart';

part 'get_matched_user_list_api.g.dart';
part 'get_matched_user_list_request.dart';
part 'get_matched_user_list_response.dart';

class GetMatchedUserListApi
    extends BaseApiImpl<GetMatchedUserListRequest, GetMatchedUserListResponse>
    implements BaseApi<List<MatchedUserModel>> {
  final NetworkConfig networkConfig;

  GetMatchedUserListApi(this.networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: DatingApiPaths.matchedUsers,
          requestType: ApiRequestType.get,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<MatchedUserModel>>> call() async {
    final result = await apiCall(
      GetMatchedUserListRequest(
        page: 0,
        limit: 20,
      ),
    );
    return result.fold((failure) {
      return Left(failure);
    }, (data) {
      return Right(data.list);
    });
  }

  @override
  GetMatchedUserListResponse apiResponseFromJson(Map<String, dynamic> json) {
    return GetMatchedUserListResponse.fromJson(json);
  }

  @override
  Future<Either<FailureModel, GetMatchedUserListResponse>> mock(
    GetMatchedUserListRequest request,
  ) async {
    return Right(MockDatingResponse().matchedUserList());
  }
}
