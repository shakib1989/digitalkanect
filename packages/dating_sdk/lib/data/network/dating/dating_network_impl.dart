import 'package:dating_sdk/data/network/dating/apis/balance/get_balance_api.dart';
import 'package:dating_sdk/data/network/dating/apis/subscription_plan_list/get_subscription_plan_list_api.dart';

import 'apis/matched_user_list/get_matched_user_list_api.dart';
import 'default_imports.dart';

class DatingNetworkImpl extends DatingNetwork {
  final NetworkConfig networkConfig;

  DatingNetworkImpl(this.networkConfig);

  @override
  Future<Either<FailureModel, List<MatchedUserModel>>> getMatchedUsers() =>
      GetMatchedUserListApi(networkConfig).call();

  @override
  Future<Either<FailureModel, BalanceModel>> getBalance() =>
      GetBalanceApi(networkConfig).call();

  @override
  Future<Either<FailureModel, List<SubscriptionPlanModel>>>
      getSubscriptionPlans() =>
          GetSubscriptionPlanListApi(networkConfig).call();
}
