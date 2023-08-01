import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/domain/networks/dating_network.dart';
import 'package:dating_sdk/domain/repositories/matched_user_repository.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../dating_get_it.dart';

class GetMatchedUsersUseCase {
  DatingNetwork get network => DatingSdkGetIt.shared.get();

  MatchedUserRepository get repo => DatingSdkGetIt.shared.get();

  GetMatchedUsersUseCase();

  Future<Either<FailureModel, List<MatchedUserModel>>> call() async {
    final result = await network.getMatchedUsers();
    if (result.isRight()) {
      await updateRepository(result.getOrElse(() => []));
    }
    return result;
  }

  Future<void> updateRepository(List<MatchedUserModel> list) async {
    await repo.clear();
    await repo.saveAll(list);
  }
}
