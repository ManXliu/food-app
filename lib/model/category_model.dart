import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  int id;
  String picturePath;
  String title;

  CategoryModel(this.id, this.picturePath, this.title);

  CategoryModel.name(this.id, this.picturePath, this.title);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

List categoryList = [
  CategoryModel.name(1, "assets/images/category1.png", "Breakfast"),
  CategoryModel.name(2, "assets/images/category2.png", "Lunch"),
  CategoryModel.name(3, "assets/images/category3.png", "Drinks"),
  CategoryModel.name(4, "assets/images/category4.png", "Pastas"),
  CategoryModel.name(5, "assets/images/category5.png", "Salads"),
  CategoryModel.name(6, "assets/images/category6.png", "Desserts"),
  CategoryModel.name(7, "assets/images/category7.png", "Soups"),
];
