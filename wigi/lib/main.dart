import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  late GoogleMapController mapController;
  late List<WigiLocation> wigiLocations = [
    WigiLocation("The BRIX on the Fox", "", 42.10512303768408,
        -88.28441944549861, [], ""),
    WigiLocation("Uptown La Grange Apartments", "", 41.81855079921119,
        -87.86796435280937, [], ""),
  ];

  final LatLng _center = const LatLng(42.10512303768408, -88.28441944549861);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Stack(children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: PointerInterceptor(
                child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 3,
                    child: SnapCarousel(wigiLocations: wigiLocations))))
      ]),
    );
  }
}
