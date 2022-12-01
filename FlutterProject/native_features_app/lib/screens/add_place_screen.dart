import 'package:flutter/material.dart';
import '../widgets/image_input.dart';
import '../widgets/location_input.dart';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';
import 'dart:io';

class AddPlaceScreenState extends StatefulWidget {
  static const routeName = '/add-place';
  const AddPlaceScreenState({super.key});

  @override
  State<AddPlaceScreenState> createState() => _AddPlaceScreenStateState();
}

class _AddPlaceScreenStateState extends State<AddPlaceScreenState> {
  final _titleController = TextEditingController();
  File? _pickedImage;
  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _savePlace() {
    if (_titleController.text.isEmpty || _pickedImage == null) {
      return;
    }
    Provider.of<GreatPlaces>(context, listen: false)
        .addPlace(_titleController.text, _pickedImage!);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Place'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: 'Title'),
                  controller: _titleController,
                ),
                const SizedBox(
                  height: 10,
                ),
                ImageInput(_selectImage),
                const SizedBox(
                  height: 10,
                ),
                const LocationInput(),
              ],
            ),
          ),
        )),
        ElevatedButton.icon(
          onPressed: _savePlace,
          icon: const Icon(Icons.add),
          label: const Text('Add Place'),
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.secondary),
        ),
      ]),
    );
  }
}
