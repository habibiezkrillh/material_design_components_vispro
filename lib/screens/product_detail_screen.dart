import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, String> product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product["title"]!)),
      body: Column(
        children: [
          Image.asset(product["image"]!, height: 300, fit: BoxFit.cover),
          SizedBox(height: 20),
          Text(
            product["title"]!,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(height: 10),
          Text(
            product["price"]!,
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "TOEI Company 2024",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
