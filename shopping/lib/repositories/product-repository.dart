import 'package:dio/dio.dart';
import 'package:shopping/models/product-details-model.dart';

import '../models/product-list-item.dart';
import '../settings.dart';

class ProductRepository {
  Future<List<ProductListItemModel>> gelAll() async {
    final url = "${Settings.apiUrl}v1/products";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => ProductListItemModel.fromJson(item))
        .toList();
  }

  Future<List<ProductListItemModel>> getByCategory(String category) async {
    final url = "${Settings.apiUrl}v1/categories/$category/products";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => ProductListItemModel.fromJson(item))
        .toList();
  }

  Future<ProductDetailsModel> get(String tag) async {
    var url = "${Settings.apiUrl}v1/products/$tag";
    Response response = await Dio().get(url);
    return ProductDetailsModel.fromJson(response.data);
  }
}
