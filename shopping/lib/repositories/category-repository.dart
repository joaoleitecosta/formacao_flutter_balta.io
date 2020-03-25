import 'package:dio/dio.dart';
import 'package:shopping/models/category-list-item-model.dart';
import '../settings.dart';

class CategoryRepository {
  Future<List<CategoryListItemModel>> getAll() async {
    final url = "${Settings.apiUrl}v1/categories";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((category) => CategoryListItemModel.fromJson(category))
        .toList();
  }
}
