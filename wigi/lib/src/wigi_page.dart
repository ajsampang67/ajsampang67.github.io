import 'package:flutter/material.dart';
import 'location.dart';

class WigiPage extends StatelessWidget {
  final WigiLocation wigiLocation;

  const WigiPage({super.key, required this.wigiLocation});

  @override
  Widget build(BuildContext context) {
    return buildWigiPage(context, wigiLocation);
  }
}

Widget buildWigiPage(BuildContext context, WigiLocation wigiLocation) {
  return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Text(wigiLocation.name)));
}
