import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:flutter/material.dart';

class AnimatedRadialMenuExample extends StatefulWidget {
  const AnimatedRadialMenuExample({Key? key}) : super(key: key);

  @override
  State<AnimatedRadialMenuExample> createState() =>
      _AnimatedRadialMenuExampleState();
}

class _AnimatedRadialMenuExampleState extends State<AnimatedRadialMenuExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text("AnimatedRadialMenu Example"),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: RadialMenu(
        children: [
          RadialButton(
            icon: Icon(Icons.ac_unit),
            buttonColor: Colors.teal,
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TargetScreen()),
            ),
          ),

          RadialButton(
            icon: Icon(Icons.camera_alt),
            buttonColor: Colors.green,
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TargetScreen()),
            ),
          ),
          RadialButton(
            icon: Icon(Icons.map),
            buttonColor: Colors.orange,
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TargetScreen()),
            ),
          ),
          RadialButton(
            icon: Icon(Icons.access_alarm),
            buttonColor: Colors.indigo,
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TargetScreen()),
            ),
          ),
          RadialButton(
            icon: Icon(Icons.watch),
            buttonColor: Colors.pink,
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TargetScreen()),
            ),
          ),

        ],
      ),
    );
  }
}

class TargetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Target Screen"),
      ),
    );
  }
}
