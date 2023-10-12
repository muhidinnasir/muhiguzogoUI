import 'package:flutter/material.dart';

class LocationPickerScreenState extends StatefulWidget {
  const LocationPickerScreenState({super.key});

  @override
  State<LocationPickerScreenState> createState() =>
      _LocationPickerScreenStateState();
}

class _LocationPickerScreenStateState extends State<LocationPickerScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 30,
            )),
      ),
      body: const Center(
        child: Text("List of Location will diplay here"),
      ),
    );
  }
}
