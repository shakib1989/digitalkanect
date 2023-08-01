import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/domain/networks/dating_network.dart';
import 'package:dating_sdk/domain/repositories/matched_user_repository.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../dating_get_it.dart';

class GetBalanceUseCase {
  DatingNetwork get network => DatingSdkGetIt.shared.get();

  MatchedUserRepository get repo => DatingSdkGetIt.shared.get();

  GetBalanceUseCase();

  Future<Either<FailureModel, BalanceModel>> call() => network.getBalance();
}
