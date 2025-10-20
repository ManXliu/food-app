// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) =>
    FoodModel((json['id'] as num).toInt())
      ..picturePath = json['picturePath'] as String?
      ..title = json['title'] as String?;

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
  'id': instance.id,
  'picturePath': instance.picturePath,
  'title': instance.title,
};
