import 'package:flutter/material.dart';
import 'package:testapplication/controller/cart.dart';
import 'package:testapplication/model/cart_item.dart';

import 'package:get/get.dart';
import 'package:testapplication/view/check_out.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        backgroundColor: const Color(0xFFC67C4E),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              cartController.clearCart();
            },
          ),
        ],
      ),
      body: Obx(
        () {
          return cartController.cartItems.isEmpty
              ? const Center(
                  child: Text(
                    'Cart is empty',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: cartController.cartItems.length,
                          itemBuilder: (context, index) {
                            var item = cartController.cartItems[index];
                            return Card(
                              elevation: 4,
                              child: ListTile(
                                title: Text(item.name),
                                subtitle:
                                    Text('\$${item.price.toStringAsFixed(2)}'),
                                trailing: IconButton(
                                  icon: const Icon(Icons.remove_circle_outline),
                                  onPressed: () {
                                    cartController.cartItems.removeAt(index);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Total: \$${cartController.totalAmount.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => CheckoutPage());
                        },
                        child: const Text('Proceed to Checkout'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC67C4E),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
