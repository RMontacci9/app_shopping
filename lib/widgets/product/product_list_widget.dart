import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product_card_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key, required this.scrollDirection});
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: ListView(
        scrollDirection: scrollDirection,
        children: [
          ProductCardWidget(
            title: "Nike Dry-Fit Long Sleeve",
            description: "Nike",
            image: "assets/images/product-10.png",
            price: 150,
          ),
          ProductCardWidget(
            title: "BeoPlay Speaker",
            description: "Bang and Olufsen",
            image: "assets/images/product-1.png",
            price: 755,
          ),
          ProductCardWidget(
            title: "Leather Wristwatch",
            description: "Tag Heuer",
            image: "assets/images/product-2.png",
            price: 450,
          ),
          ProductCardWidget(
            title: "Smart Bluetooth Speaker",
            description: "Google Inc.",
            image: "assets/images/product-3.png",
            price: 900,
          ),
          ProductCardWidget(
            title: "Smart Luggage",
            description: "Smart Inc.",
            image: "assets/images/product-4.png",
            price: 1000,
          ),

        ],
      ),
    );
  }
}
