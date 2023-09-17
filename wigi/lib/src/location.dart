import 'package:google_maps_flutter/google_maps_flutter.dart';

class WigiLocation {
  String name = "name";
  int index = 0;
  int numImages = 0;
  String description = "description";
  double latitude = 0.0;
  double longitude = 0.0;
  List<DateTime> dates = <DateTime>[];

  WigiLocation(this.name, this.index, this.numImages, this.description,
      this.latitude, this.longitude, this.dates);
}
