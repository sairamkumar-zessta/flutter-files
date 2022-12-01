import 'package:flutter/material.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = '/product-det';
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final reqProduct =
        Provider.of<Products>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(reqProduct.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.network(
              reqProduct.imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Text(reqProduct.title),
          Text(reqProduct.description)
        ],
      ),
    );
  }
}
