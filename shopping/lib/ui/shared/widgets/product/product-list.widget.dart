import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping/models/product-list-item.dart';
import 'package:shopping/ui/shared/shared/loader.widget.dart';
import 'package:shopping/ui/shared/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final List<ProductListItemModel> products;

  ProductList({@required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Loader(object: products, calback: list),
      height: 410,
    );
  }

  Widget list() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: ProductCard(
              item: products[index],
            ),
          );
        });
  }
}
