import 'dart:convert';

import '../../default_imports.dart';

part 'get_subscription_plan_list_api.g.dart';
part 'get_subscription_plan_list_request.dart';
part 'get_subscription_plan_list_response.dart';

class GetSubscriptionPlanListApi extends BaseApiImpl<
        GetSubscriptionPlanListRequest, GetSubscriptionPlanListResponse>
    implements BaseApi<List<SubscriptionPlanModel>> {
  final NetworkConfig networkConfig;

  GetSubscriptionPlanListApi(this.networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: DatingApiPaths.subscriptionPlanList,
          requestType: ApiRequestType.get,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<SubscriptionPlanModel>>> call() async {
    final result = await apiCall(GetSubscriptionPlanListRequest());
    return result.fold((failure) {
      return Left(failure);
    }, (data) {
      return Right(data.list);
    });
  }

  @override
  GetSubscriptionPlanListResponse apiResponseFromJson(
      Map<String, dynamic> json) {
    return GetSubscriptionPlanListResponse.fromJson(json);
  }

  @override
  Future<Either<FailureModel, GetSubscriptionPlanListResponse>> mock(
    GetSubscriptionPlanListRequest request,
  ) async {
    return Right(MockDatingResponse().subscriptionPlanList());
  }
}
