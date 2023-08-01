import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../models/models.dart';

abstract class DatingNetwork {
  Future<Either<FailureModel, BalanceModel>> getBalance();
  Future<Either<FailureModel, List<SubscriptionPlanModel>>>
      getSubscriptionPlans();
  Future<Either<FailureModel, List<MatchedUserModel>>> getMatchedUsers();
}
