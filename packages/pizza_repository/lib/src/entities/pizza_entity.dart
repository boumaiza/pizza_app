import 'package:pizza_repository/src/entities/macros_entity.dart';
import 'package:pizza_repository/src/models/macros.dart';

class PizzaEntity {
  String pizzaId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  PizzaEntity({
    required this.pizzaId,
    required this.picture,
    required this.isVeg,
    required this.spicy,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  Map<String, Object?> toJson() {
    return {
      'pizzaId': pizzaId,
      'picture': picture,
      'isVeg': isVeg,
      'spicy': spicy,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toDocument(),
    };
  }

  static PizzaEntity fromJson(Map<String, dynamic> json) {
    return PizzaEntity(
      pizzaId: json['pizzaId'],
      picture: json['picture'],
      isVeg: json['isVeg'],
      spicy: json['spicy'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      discount: json['discount'],
      macros: Macros.fromEntity(MacrosEntity.fromDocument(json['macros'])),
    );
  }
}
