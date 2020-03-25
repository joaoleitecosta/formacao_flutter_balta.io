import 'package:flutter/widgets.dart';
import 'package:shopping/models/category-list-item-model.dart';
import 'package:shopping/models/product-list-item.dart';
import 'package:shopping/repositories/category-repository.dart';
import 'package:shopping/repositories/product-repository.dart';

class HomeBloc extends ChangeNotifier {
  final categoryRepository = CategoryRepository();
  final productRepository = ProductRepository();

  List<CategoryListItemModel> categories;
  List<ProductListItemModel> products;
  String selectedCategory = 'todos';

  HomeBloc() {
    getCategory();
    getProducts();
  }

  getCategory() {
    categoryRepository.getAll().then((data) {
      this.categories = data;
      notifyListeners();
    });
  }

  getProducts() {
    productRepository.gelAll().then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  getProductByCategory() {
    productRepository.getByCategory(selectedCategory).then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  changeCategory(tag) {
    selectedCategory = tag;
    products = null;
    getProductByCategory();
    notifyListeners();
  }
}
