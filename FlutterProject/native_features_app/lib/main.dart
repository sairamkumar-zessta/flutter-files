import 'package:flutter/material.dart';
import 'package:native_features_app/screens/add_place_screen.dart';
import './providers/great_places.dart';
import '../screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const PlacesListScreen(),
          AddPlaceScreenState.routeName: (context) =>
              const AddPlaceScreenState()
        },
      ),
    );
  }
}
