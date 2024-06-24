import 'package:flutter/material.dart';
import '../models/product.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'iPhone 15 Pro Max', description: 'The latest iPhone model with A15 Bionic chip.'),
    Product(name: 'iPad Pro', description: 'The most advanced iPad with M1 chip.'),
    Product(name: 'MacBook Pro', description: 'The powerful MacBook with M1 Pro chip.'),
  ];
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
