import 'package:flutter/widgets.dart';
import 'package:shopping/models/cart-model.dart';

class CartBloc extends ChangeNotifier {
  var cart = new List<CartItemModel>();
  double total = 0;

  get() {
    return cart;
  }

  add(CartItemModel item) {
    cart.add(item);
    calculateTotal();
  }

  remove(CartItemModel item) {
    cart.removeWhere((x) => x.id == item.id);
    calculateTotal();
  }

  decrease(CartItemModel item) {
    if (item.quantity > 1) {
      item.quantity++;
      calculateTotal();
    }
  }

  itemInCart(CartItemModel item) {
    var result = false;
    cart.forEach((x) {
      if (x.id == item.id) result = true;
    });
    return result;
  }

  increase(CartItemModel item) {
    if (item.quantity < 10) {
      item.quantity++;
      calculateTotal();
    }
  }

  calculateTotal() {
    total = 0;
    cart.forEach((x) {
      total += (x.price * x.quantity);
    });
    notifyListeners();
  }
}
