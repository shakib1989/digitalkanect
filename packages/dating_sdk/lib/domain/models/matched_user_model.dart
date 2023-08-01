part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class MatchedUserModel {
  String id;
  String name;
  String thumbnailUrl;
  String imageUrl;
  bool online;
  bool favorite;

  MatchedUserModel({
    this.id = '',
    this.name = '',
    this.imageUrl = '',
    this.thumbnailUrl = '',
    this.online = true,
    this.favorite = false,
  });

  @override
  factory MatchedUserModel.fromJson(Map<String, dynamic> json) =>
      _$MatchedUserModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MatchedUserModelToJson(this);
}
