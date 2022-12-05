// To parse this JSON data, do
//
//     final menuModel = menuModelFromJson(jsonString);

import 'dart:convert';

List<MenuModel> menuModelFromJson(String str) =>
    List<MenuModel>.from(json.decode(str).map((x) => MenuModel.fromJson(x)));

String menuModelToJson(List<MenuModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MenuModel {
  MenuModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });

  int id;
  String name;
  int price;
  String description;
  String image;

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "image": image,
      };
}
