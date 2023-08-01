import 'package:dating_sdk/domain/dating_get_it.dart';
import 'package:dating_sdk/domain/models/models.dart';
import 'package:dating_sdk/domain/repositories/matched_user_repository.dart';

import 'collections/matched_user_dao.dart';

class MatchedUserRepositoryImpl implements MatchedUserRepository {
  MatchedUserDao get dao => DatingSdkGetIt.shared.get<MatchedUserDao>();

  @override
  Future<void> clear() async {
    await dao.clear();
  }

  @override
  Future<List<MatchedUserModel>> getAll() async {
    return await dao.getAll();
  }

  @override
  Future<void> saveAll(List<MatchedUserModel> list) async {
    await dao.upsertAll(list);
  }
}
