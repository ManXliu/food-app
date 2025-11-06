
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel{
  final BigInt userId;
  final String username;
  final String accessToken;
  final String refreshToken;


  UserModel(this.userId, this.username, this.accessToken, this.refreshToken);
}