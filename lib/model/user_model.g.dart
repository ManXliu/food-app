// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  BigInt.parse(json['userId'] as String),
  json['username'] as String,
  json['accessToken'] as String,
  json['refreshToken'] as String,
  json['avatarOssId'] as String,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'userId': instance.userId.toString(),
  'username': instance.username,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'avatarOssId': instance.avatarOssId,
};
