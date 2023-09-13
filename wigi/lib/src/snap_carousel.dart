import 'package:flutter/material.dart';
import 'package:wigi/src/location.dart';
import 'package:wigi/src/wigi.dart';

class SnapCarousel extends StatelessWidget {
  final List<WigiLocation> wigiLocations;

  const SnapCarousel({super.key, required this.wigiLocations});

  @override
  Widget build(BuildContext context) {
    return _buildCarousel(context);
  }

  Widget _buildCarousel(BuildContext context) {
    return SizedBox(
      // you may want to use an aspect ratio here for tablet support
      height: 200.0,
      child: PageView.builder(
        // store this controller in a State to save the carousel scroll position
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (BuildContext context, int itemIndex) {
          final wigiLocation = wigiLocations[itemIndex];

          Widget wigiPage = buildWigiPage(context, wigiLocation);

          return _buildCarouselItem(context, itemIndex, wigiPage);
        },
      ),
    );
  }

  Widget _buildCarouselItem(
      BuildContext context, int itemIndex, Widget wigiPage) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: wigiPage,
      ),
    );
  }
}
