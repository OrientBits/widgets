import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({Key? key}) : super(key: key);

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  double _opacity1 = 1.0,_opacity2 = 1.0,_opacity3 = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Animation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Click on colored squares below to make them invisible"),
            GestureDetector(
              onTap: () {
                setState(() {
                  _opacity1 = 0;
                });
              },
              child: Opacity(
                opacity: _opacity1,
                child: _coloredSquare(Colors.red),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  _opacity2 = 0;
                });
              },
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity2,
                child: _coloredSquare(Colors.green),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  _opacity3 = 0;
                });
              },
              child: AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: _opacity3,
                child: _coloredSquare(Colors.blue),
              ),
            )


          ],
        ),
      ),
    );
  }

  Widget _coloredSquare(Color color) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}
