import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AnimationsPackageExample extends StatefulWidget {
  const AnimationsPackageExample({Key? key}) : super(key: key);

  @override
  State<AnimationsPackageExample> createState() =>
      _AnimationsPackageExampleState();
}

class _AnimationsPackageExampleState extends State<AnimationsPackageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations Package Example"),
      ),
      body: ListView(
        children: [
          const Divider(height: 2, color: Colors.black),
          OpenContainer(
              closedBuilder: (ctx, action) => const ListTile(
                    title: Text("Click me"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
              openBuilder: (ctx, action) => Scaffold(
                appBar: AppBar(title: const Text("Hello open container"),),
                backgroundColor: Colors.white,
                body: const Center(
                  child: Text("New Page"),
                ),
              ),
          )
        ],
      ),
    );
  }
}
