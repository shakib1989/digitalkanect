import 'package:dating_sdk/data/network/default_imports.dart';
import 'package:core_sdk/exports.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../entities/entities.dart';
import '../dating_db.dart';

@singleton
class MatchedUserDao
    extends BaseNoSqlRepositoryImpl<MatchedUserModel, MatchedUserEntity, String>
    implements BaseNoSqlRepository<MatchedUserModel, String> {
  MatchedUserDao() : super(DatingDB.shared.database.matchedUser);

  @override
  Optional<MatchedUserEntity> convertToEntity(MatchedUserModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.of(MatchedUserEntity.fromModel(model));
  }

  @override
  Optional<MatchedUserModel> convertToModel(MatchedUserEntity? entity) {
    return Optional.ofNullable(entity?.toModel());
  }

  @override
  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause> idEqual(
          QueryBuilder<MatchedUserEntity, MatchedUserEntity, QWhereClause>
              queryBuilder,
          String value) =>
      queryBuilder.idEqualTo(value);

  @override
  String idFromModel(MatchedUserModel model) => model.id;
}
