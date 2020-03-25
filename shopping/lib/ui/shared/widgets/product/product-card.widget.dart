import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shopping/models/product-list-item.dart';
import 'package:shopping/ui/android/pages/product-page.dart';
import 'package:shopping/ui/shared/shared/add-to-cart.widtget.dart';

class ProductCard extends StatelessWidget {
  final ProductListItemModel item;

  ProductCard({@required this.item});

  @override
  Widget build(BuildContext context) {
    final price = NumberFormat("#,##0.00", "pt_BR");
    return Container(
      margin: EdgeInsets.all(5),
      width: 240,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.03),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(
                            tag: item.tag,
                          )));
            },
            child: Container(
              // child: ,
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(item.image),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            height: 60,
            child: Text(
              item.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              item.brand,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  child: Text(
                    "R\$ ${price.format(item.price)}",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Container(
                  child: AddToCart(
                    item: item,
                  ),
                ),
                // AddToCard(item: item),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
