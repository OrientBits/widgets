import 'package:flutter/material.dart';

class HeroExample extends StatefulWidget {
  const HeroExample({Key? key}) : super(key: key);

  @override
  State<HeroExample> createState() => _HeroExampleState();
}

class _HeroExampleState extends State<HeroExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation Example"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Hero(
              tag: "my_hero_tag",
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/flutter_1.png"),
              ),
            ),
            title: const Text("Tap on the photo to view the animation transition"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              _showSecondPage(context);
            },
          )
        ],
      ),
    );
  }
}


void _showSecondPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) =>
      const Scaffold(
        body: Center(
          child: Hero(
            tag: "my_hero_tag",
            child: CircleAvatar(
              radius: 180,
              backgroundImage: AssetImage("assets/flutter_1.png"),
            )
          ),
        ),
      )));
}

