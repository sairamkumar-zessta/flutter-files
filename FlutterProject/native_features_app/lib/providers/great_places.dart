import 'package:flutter/material.dart';
import '../models/place.dart';
import 'dart:io';
import '../helpers/db_helper.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String pickedTitle, File pickedImage) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: pickedTitle,
      location: null,
      image: pickedImage,
    );
    _items.add(newPlace);
    notifyListeners();
    DBHelper.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
  }

  Future<void> fetchAndSetPlaces() async {
    final dataList = await DBHelper.getData('user_places');
    dataList
        .map(
          (item) => Place(
              id: item['id'],
              title: item['title'],
              location: null,
              image: File(item['image'])),
        )
        .toList();
    notifyListeners();
  }
}
