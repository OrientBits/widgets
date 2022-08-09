import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:ui';


class ImageFilteredWidget extends StatefulWidget {
  const ImageFilteredWidget({Key? key}) : super(key: key);

  @override
  State<ImageFilteredWidget> createState() => _ImageFilteredWidgetState();
}

class _ImageFilteredWidgetState extends State<ImageFilteredWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Image Filter like blurring etc")),
        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
                        child: Image.asset(
                          "assets/flutterimg.jpg",
                        )),
                  ],
                ),
              ),
            ),
            Container(
              height: 400,
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageFiltered(
                        imageFilter: ImageFilter.matrix(
                          Float64List.fromList(
                              [1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1]),
                        ),
                        child: Image.asset(
                          "assets/flutterimg.jpg",
                          scale: 3.5,
                        )),
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageFiltered(
                        imageFilter: ImageFilter.matrix(
                          Matrix4.rotationZ(0.15).storage,
                        ),
                        child:
                            Image.asset("assets/flutterimg.jpg", scale: 3.5)),
                  ],
                ),
              ),
            ),

          ],
        ));
  }
}
