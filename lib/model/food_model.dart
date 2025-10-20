import 'package:json_annotation/json_annotation.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel {
  int id;
  String? picturePath;
  String? title;
  String? kcal;
  String? clock;

  FoodModel(this.id);

  FoodModel.name(this.id, this.picturePath, this.title, this.kcal, this.clock);

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
}

List foodList = [
  FoodModel.name(
    1,
    "assets/images/food1.png",
    "Chorizo & mozzarella gnocchi bake",
    "350",
    "45",
  ),
  FoodModel.name(
    2,
    "assets/images/food2.png",
    "Coconut & squash curry",
    "250",
    "30",
  ),
  FoodModel.name(3, "assets/images/food3.png", "Huevos Rancheros", "125", "20"),
  FoodModel.name(
    4,
    "assets/images/food4.png",
    "Black forest Gateau",
    "250",
    "45",
  ),
];
