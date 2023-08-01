part of 'entities.dart';

@Collection(accessor: 'matchedUser')
@Name('MatchedUser')
class MatchedUserEntity extends BaseNoSqlEntity {
  @Index(unique: true, replace: true, caseSensitive: false)
  String id;
  String name;
  String thumbnailUrl;
  String imageUrl;
  bool online;
  bool favorite;

  MatchedUserEntity({
    this.id = '',
    this.name = '',
    this.imageUrl = '',
    this.thumbnailUrl = '',
    this.online = true,
    this.favorite = false,
  });

  MatchedUserModel toModel(){
    return MatchedUserModel(
      id: id,
      name: name,
      imageUrl: imageUrl,
      thumbnailUrl: thumbnailUrl,
      online: online,
      favorite: favorite,
    );
  }

  factory MatchedUserEntity.fromModel(MatchedUserModel model) {
    return MatchedUserEntity(
      id: model.id,
      name: model.name,
      imageUrl: model.imageUrl,
      thumbnailUrl: model.thumbnailUrl,
      online: model.online,
      favorite: model.favorite,
    );
  }
}
