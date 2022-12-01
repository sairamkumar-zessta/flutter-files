import 'package:flutter/material.dart';
// import '../providers/products.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('MyShop'),
        // centerTitle: true,
      ),
      body: const ProductsGrid(),
    );
  }
}
