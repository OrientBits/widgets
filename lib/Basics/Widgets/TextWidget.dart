import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.shade100,
          child: const Text(
            "Simple Text demo",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 32,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline),
          ),
        )
    );
  }
}
