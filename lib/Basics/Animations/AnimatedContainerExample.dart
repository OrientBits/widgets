import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _borderRadius = 8;
  double _height = 200;
  double _width = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AnimatedContainer Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastOutSlowIn,
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(_borderRadius)),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _borderRadius = _borderRadius == 8 ? 100 : 8;
                      _width = _width == 200 ? 210:200;
                      _height = _height  == 200 ? 210:200;
                    });
                  },
                  child: const Text("Change me"))
            ],
          ),
        ));
  }
}
