import 'category_model.dart';
import 'gallery_model.dart';

class ProductModel {
  late int id;
  late int name;
  late double price;
  late String description;
  late String tags;
  late CategoryModel category;
  late DateTime createdAt;
  late DateTime updatedAt;
  late List<GalleryModel> galleries;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    id = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json[' tags '];
    category = CategoryModel.fromJson(json[' category ']);
    galleries = json[' galleries ']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .tList();
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'galleries': galleries.map((gallery) => gallery.toJson())..toList(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
    };
  }
}
