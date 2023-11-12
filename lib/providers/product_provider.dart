import 'package:flutter/material.dart';
import 'package:zoidak_shoes_app/models/product_model.dart';
import 'package:zoidak_shoes_app/services/product_service.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProducts();
      _products = products;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
