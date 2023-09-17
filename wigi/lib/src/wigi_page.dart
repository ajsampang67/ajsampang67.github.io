import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:wigi/src/carousel_with_indicator.dart';
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
  double screenHeight = MediaQuery.of(context).size.height;
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(
                wigiLocation.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenHeight * .2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 250,
            child: CarouselWithIndicator(imgList: getImgList(wigiLocation)),
          ),
          SizedBox(
            child: Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
              child: MarkdownBody(data: wigiLocation.description),
            ),
          ),
        ],
      ),
    ),
  );
}

List<String> getImgList(WigiLocation wigiLocation) {
  List<String> imgList = [];

  for (var i = 1; i < wigiLocation.numImages + 1; i++) {
    imgList.add('${wigiLocation.s3Bucket}$i.jpg');
  }

  return imgList;
}
