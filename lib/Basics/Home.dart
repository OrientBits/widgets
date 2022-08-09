import 'package:flutter/material.dart';
import 'package:widgets/Basics/Animations/Animations.dart';
import 'package:widgets/Basics/Appbar/AppBars.dart';
import 'package:widgets/Basics/Async/Asyncs.dart';
import 'package:widgets/Basics/Lists/Lists.dart';
import 'package:widgets/Basics/Navigation/Navigations.dart';
import 'Layouts/Layouts.dart';
import 'Widgets/Widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 45),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Widgets()));
                },
                child: const Text("Widgets", style: TextStyle(fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 45),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Layouts()));
                },
                child: const Text("Layouts", style: TextStyle(fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 45),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Lists()));
                },
                child: const Text("Lists", style: TextStyle(fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 45),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AppBars()));
                },
                child: const Text("Appbar", style: TextStyle(fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 45),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Navigations()));
                },
                child:
                    const Text("Navigation", style: TextStyle(fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 45),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Asyncs()));
                },
                child: const Text("Async", style: TextStyle(fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 45),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Animations()));
                },
                child: const Text("Animation", style: TextStyle(fontSize: 16))),
          ),
        ],
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
