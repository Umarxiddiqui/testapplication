import 'package:testapplication/model/cart_item.dart';

import 'package:get/get.dart';

class CartController extends GetxController {
  // Using an observable list to track cart items
  var cartItems = <CartItem>[].obs;

  // Method to add an item to the cart
  void addItem(CartItem item) {
    cartItems.add(item);
  }

  // Method to clear the cart
  void clearCart() {
    cartItems.clear();
  }

  // Computed property to get the total item count
  int get itemCount => cartItems.length;

  // Computed property to get the total amount
  double get totalAmount {
    double total = 0.0;
    for (var item in cartItems) {
      total += item.price;
    }
    return total;
  }
}
