import 'package:flutter/material.dart';
import 'package:wigi/src/location.dart';
import 'src/snap_carousel.dart';

void main() {
  runApp(Wigi());
}

class Wigi extends StatefulWidget {
  const Wigi({super.key});

  @override
  State<Wigi> createState() => _WigiState();
}

class _WigiState extends State<Wigi> {
  late List<WigiLocation> wigiLocations = [
    WigiLocation(
      "The BRIX on the Fox",
      1,
      6,
      "__YOU ARE HERE__ \n\nThe BRIX on the Fox was the second venue we visited, and as soon as we left, Alyssa and I knew this was the one. We got in the car and talked about how this was the only place we could truly visualize ourselves getting married. The owners, Rob and Tone, were very thoughtful and purposeful when designing the space. The acoustics, ceremony placement, and ease-of-dance played a large part in our decision.",
      42.10512303768408,
      -88.28441944549861,
      [],
    ),
    WigiLocation(
      "Uptown La Grange Apartments",
      2,
      0,
      "",
      41.81855079921119,
      -87.86796435280937,
      [],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SnapCarousel(wigiLocations: wigiLocations),
      ),
    );
  }
}
