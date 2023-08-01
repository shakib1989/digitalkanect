import '../models/models.dart';

abstract class MatchedUserRepository {
  Future<void> clear();

  Future<List<MatchedUserModel>> getAll();

  Future<void> saveAll(List<MatchedUserModel> list);
}
