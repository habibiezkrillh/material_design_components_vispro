import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      "image": "assets/images/products/product1.jpg",
      "title": "CSM Kamen Rider Kaixa",
      "price": "\$120",
    },
    {
      "image": "assets/images/products/product2.jpg",
      "title": "Kamen Rider Figure",
      "price": "\$80",
    },
    {
      "image": "assets/images/products/product3.jpg",
      "title": "Kamen Rider Keychain",
      "price": "\$15",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KamenVault")),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 4,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailScreen(product: products[index]),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(products[index]["image"]!,
                      height: 120, fit: BoxFit.cover),
                  SizedBox(height: 10),
                  Text(
                    products[index]["title"]!,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 18),
                  ),
                  Text(
                    products[index]["price"]!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
