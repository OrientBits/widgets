import 'package:flutter/material.dart';
import 'package:widgets/Basics/Appbar/BackdropExample.dart';
import 'package:widgets/Basics/Appbar/BasicAppBarExample.dart';
import 'package:widgets/Basics/Appbar/ConvexAppbarExample.dart';

import 'BottomAppBarWithFAB.dart';
import 'FlexibleToolbar.dart';
import 'HidableButtonBarExample.dart';

class AppBars extends StatefulWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  State<AppBars> createState() => _AppBarsState();
}

class _AppBarsState extends State<AppBars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Layout"),
        ),
        body: ListView(
          children: [
            ListTile(
                title: const Text("BasicAppBar Example"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BasicAppBarExample()));
                }),

            const Divider(),

            ListTile(
                title: const Text("BottomAppBarWithFAB Example"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomAppBarWithFAB()));
                }),

            const Divider(),

            ListTile(
                title: const Text("FlexibleToolbar Example"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FlexibleToolbar()));
                }),

            const Divider(),

            ListTile(
                title: const Text("Backdrop Example"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BackdropExample()));
                }),

            const Divider(),

            ListTile(
                title: const Text("ConvexAppbar Example"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConvexAppbarExample()));
                }),

            const Divider(),

            ListTile(
                title: const Text("HidableButtonBar Example"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HidableButtonBarExample()));
                }),


          ],
        ));
  }
}
