import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapplication/controller/cart.dart';
import 'package:testapplication/model/cart_item.dart';

import 'cart_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  final List<String> imageUrls = ['c1', 'c2', 'c3', 'c4'];
  final List<String> coffeeNames = [
    'Caffe Mocha',
    'Flat White',
    'Latte',
    'Affogato'
  ];
  final List<String> coffeeTypes = ['Deep Foam', 'Espresso', 'Doppio', 'Breve'];
  final List<double> coffeePrices = [4.23, 2.34, 5.27, 3.51];

  // Get an instance of CartController
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  height: constraints.maxHeight * 0.32,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black87, Colors.black],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "  Location",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: screenWidth * 0.039,
                              color: const Color(0xFFA2A2A2)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, bottom: 8),
                        child: Text(
                          "  Bilzen, Tanjungbalai",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: screenWidth * 0.047,
                              color: const Color(0xFFD8D8D8)),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 65,
                            width: screenWidth * 0.72,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF2A2A2A), Color(0xFF2A2A2A)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: '   Search...',
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 20.0),
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Image.asset(
                                            'assets/images/search_icon.png',
                                            height: 38),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16.0, vertical: 12.0),
                                    ),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Material(
                            elevation: 6.0,
                            borderRadius: BorderRadius.circular(12.0),
                            shadowColor: Colors.black.withOpacity(0.4),
                            child: Container(
                              height: 60,
                              width: 62,
                              decoration: BoxDecoration(
                                color: const Color(0xFFC67C4E),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: const Center(
                                child: Icon(Icons.filter_alt,
                                    color: Colors.white, size: 32),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.45),
                  child: Material(
                    elevation: 6.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxWidth * 0.9,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Banner 1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Material(
                              elevation: 6,
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                height: 32,
                                width: 72,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFED5151),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Promo",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.03,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Buy one get one Free",
                                textAlign: TextAlign.left,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.8),
                                      offset: const Offset(5, 5),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.065),
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    child: AnimatedButtonBar(
                      radius: 32.0,
                      padding: const EdgeInsets.all(16.0),
                      invertedSelection: true,
                      backgroundColor: const Color(0xFF2A2A2A),
                      foregroundColor: const Color(0xFFC67C4E),
                      elevation: 6,
                      innerVerticalPadding: 16,
                      children: [
                        ButtonBarEntry(
                          onTap: () => print('All Coffee'),
                          child: Text(
                            "All Coffee",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.white),
                          ),
                        ),
                        ButtonBarEntry(
                          onTap: () => print('Machiato'),
                          child: Text(
                            "Machiato",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.white),
                          ),
                        ),
                        ButtonBarEntry(
                          onTap: () => print('Latte'),
                          child: Text(
                            "Latte",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.white),
                          ),
                        ),
                        ButtonBarEntry(
                          onTap: () => print('American'),
                          child: Text(
                            "American",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 1.5),
                  child: Container(
                    width: double.infinity,
                    height: screenHeight * 0.54,
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.0,
                          mainAxisSpacing: 25.0,
                          childAspectRatio: 0.65,
                        ),
                        itemCount: coffeeNames.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(22.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.155,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/${imageUrls[index]}.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          coffeeNames[index],
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.045,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          coffeeTypes[index],
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.03,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ ${coffeePrices[index].toStringAsFixed(2)}',
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.045,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Material(
                                          elevation: 6,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: InkWell(
                                            onTap: () {
                                              // Add item to the cart
                                              cartController.addItem(CartItem(
                                                name: coffeeNames[index],
                                                price: coffeePrices[index],
                                              ));

                                              // Show a Snackbar with GetX
                                              Get.snackbar(
                                                'Added to Cart',
                                                '${coffeeNames[index]} added to your cart!',
                                                snackPosition:
                                                    SnackPosition.BOTTOM,
                                                duration:
                                                    const Duration(seconds: 2),
                                              );
                                            },
                                            child: Container(
                                              height: 42,
                                              width: 42,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFC67C4E),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Icon(Icons.add,
                                                  color: Colors.white,
                                                  size: 20),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => CartPage());
          },
          backgroundColor: const Color(0xFFC67C4E),
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
