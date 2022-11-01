// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    Product({
       required this.id,
       required this.name,
       required this.price,
       required this.discountPercent,
       required this.sellingPrice,
       required this.description,
       required this.image,
       required this.categoryId,
    });

    int id;
    String name;
    int price;
    int discountPercent;
    int sellingPrice;
    String description;
    String image;
    int categoryId;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        discountPercent: json["discount_percent"],
        sellingPrice: json["selling_price"],
        description: json["description"],
        image: json["image"],
        categoryId: json["category_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "discount_percent": discountPercent,
        "selling_price": sellingPrice,
        "description": description,
        "image": image,
        "category_id": categoryId,
    };
}
