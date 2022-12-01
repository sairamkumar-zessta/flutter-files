import 'package:flutter/material.dart';
import './cart_screen.dart';
import '../widgets/app_drawer.dart';
import '../widgets/products_grid.dart';
import '../widgets/badge.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import '../providers/products_provider.dart';
// import '../providers/products_provider.dart';

enum FilterOptions {
  favorites,
  all,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;
  var _isInit = true;
  var _isLoading = false;

  @override
  void initState() {
    //
    // Future.delayed(Duration.zero).then((_) {
    //   Provider.of<Products>(context).fetchAndSetProducts();
    // });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Products>(context).fetchAndSetProducts().then(
        (_) {
          setState(() {
            _isLoading = false;
          });
        },
      );
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text('MyShop'),
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.favorites) {
                    _showOnlyFavorites = true;
                    // productsContainer.showFavoritesOnly();
                  } else {
                    _showOnlyFavorites = false;
                    // productsContainer.showAll();
                  }
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                const PopupMenuItem(
                  value: FilterOptions.favorites,
                  child: Text('Only Favourites'),
                ),
                const PopupMenuItem(
                  value: FilterOptions.all,
                  child: Text('Show All'),
                ),
              ],
            ),
            Consumer<Cart>(
                builder: (_, cart, c) => Badge(
                      value: cart.itemCount.toString(),
                      color: Theme.of(context).colorScheme.secondary,
                      key: null,
                      child: IconButton(
                        icon: const Icon(
                          Icons.shopping_cart,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(CartScreen.routeName);
                        },
                      ),
                    )),
          ],
        ),
        drawer: const AppDrawer(),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ProductsGrid(_showOnlyFavorites));
  }
}
