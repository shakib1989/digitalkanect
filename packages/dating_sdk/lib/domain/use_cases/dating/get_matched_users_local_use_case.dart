import 'package:dating_sdk/domain/repositories/matched_user_repository.dart';

import '../../dating_get_it.dart';
import '../../models/models.dart';

class GetMatchedUsersLocalUseCase {
  MatchedUserRepository get repo => DatingSdkGetIt.shared.get();

  GetMatchedUsersLocalUseCase();

  Future<List<MatchedUserModel>> call() async {
    return await repo.getAll();
  }
}
