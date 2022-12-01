import 'package:flutter/material.dart';
import 'package:native_features_app/screens/add_place_screen.dart';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreenState.routeName);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false)
            .fetchAndSetPlaces(),
        builder: (context, snapshot) =>
            // snapshot.connectionState ==
            //         ConnectionState.waiting
            // ? const Center(
            //     child: CircularProgressIndicator(),
            //   )
            // :
            Consumer<GreatPlaces>(
          child: const Center(
            child: Text('Got no places yet, start adding some!'),
          ),
          builder: (ctx, greatPlaces, child) => greatPlaces.items.isEmpty
              ? child!
              : ListView.builder(
                  itemCount: greatPlaces.items.length,
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(
                        greatPlaces.items[i].image,
                      ),
                    ),
                    title: Text(greatPlaces.items[i].title),
                    onTap: () {},
                  ),
                ),
        ),
      ),
    );
  }
}
