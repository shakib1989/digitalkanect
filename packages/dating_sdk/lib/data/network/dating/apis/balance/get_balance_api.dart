import 'dart:convert';

import '../../default_imports.dart';

part 'get_balance_api.g.dart';
part 'get_balance_request.dart';
part 'get_balance_response.dart';

class GetBalanceApi extends BaseApiImpl<GetBalanceRequest, GetBalanceResponse>
    implements BaseApi<BalanceModel> {
  final NetworkConfig networkConfig;

  GetBalanceApi(this.networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: DatingApiPaths.balance,
          requestType: ApiRequestType.get,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, BalanceModel>> call() async {
    final result = await apiCall(GetBalanceRequest());
    return result.fold((failure) {
      return Left(failure);
    }, (response) {
      return Right(response.data);
    });
  }

  @override
  GetBalanceResponse apiResponseFromJson(Map<String, dynamic> json) {
    return GetBalanceResponse.fromJson(json);
  }

  @override
  Future<Either<FailureModel, GetBalanceResponse>> mock(
    GetBalanceRequest request,
  ) async {
    return Right(MockDatingResponse().balance());
  }
}
