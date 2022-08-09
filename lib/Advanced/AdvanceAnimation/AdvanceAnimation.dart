import 'package:flutter/material.dart';
import 'package:widgets/Advanced/AdvanceAnimation/AnimatedWidgetExample.dart';
import 'package:widgets/Advanced/AdvanceAnimation/LowLevelAnimationExample.dart';

import 'AnimatedBuilderExample.dart';
import 'AnimatedRadialMenuExample.dart';
import 'AnimatedTextExample.dart';
import 'LottieExample.dart';

class AdvanceAnimation extends StatefulWidget {
  const AdvanceAnimation({Key? key}) : super(key: key);

  @override
  State<AdvanceAnimation> createState() => _AdvanceAnimationState();
}

class _AdvanceAnimationState extends State<AdvanceAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Advance Animations"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Low Level Animation"),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LowLevelAnimationExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Animated Widget"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedWidgetExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Animated Builder"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedBuilderExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Animated Radial Menu"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedRadialMenuExample()));
            },
          ),

          Divider(),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Lottie Example"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LottieExample()));
            },
          ),

          Divider(),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("AnimatedText Example"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedTextExample()));
            },
          ),

        ],
      ),
    );
  }
}
