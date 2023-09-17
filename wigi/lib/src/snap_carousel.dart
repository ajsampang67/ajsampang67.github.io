import 'package:flutter/material.dart';
import 'package:wigi/src/location.dart';
import 'package:wigi/src/wigi_page.dart';

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
      height: MediaQuery.of(context).size.height,
      child: PageView.builder(
        // store this controller in a State to save the carousel scroll position
        controller: PageController(viewportFraction: 0.95),
        itemBuilder: (BuildContext context, int itemIndex) {
          final wigiLocation = wigiLocations[itemIndex];

          Widget wigiPage =
              WigiPage(wigiLocation: wigiLocation, index: itemIndex);

          return _buildCarouselItem(context, itemIndex, wigiPage);
        },
        itemCount: wigiLocations.length,
      ),
    );
  }

  Widget _buildCarouselItem(
      BuildContext context, int itemIndex, Widget wigiPage) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: wigiPage,
      ),
    );
  }
}
