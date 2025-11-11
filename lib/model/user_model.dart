
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel{
  final BigInt userId;
  final String username;
  final String accessToken;
  final String refreshToken;
  final String avatarOssId;

  UserModel(this.userId, this.username, this.accessToken, this.refreshToken,
      this.avatarOssId);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);


}