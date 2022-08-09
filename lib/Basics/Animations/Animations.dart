import 'package:flutter/material.dart';
import 'package:widgets/Basics/Animations/AnimatedContainerExample.dart';
import 'package:widgets/Basics/Animations/AnimatedIconsExample.dart';
import 'package:widgets/Basics/Animations/AnimationsPackageExample.dart';
import 'package:widgets/Basics/Animations/HeroExample.dart';
import 'package:widgets/Basics/Animations/OpacityExample.dart';

class Animations extends StatefulWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animations Example"),),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text("Hero Animation"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HeroExample()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text("Opacity Animation"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const OpacityExample()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text("Animated Icons"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedIconsExample()));
            },
          ),

          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text("Animated Container"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedContainerExample()));
            },
          ),

          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text("Animation Package"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimationsPackageExample()));
            },
          )
        ],
      ),
    );
  }
}
