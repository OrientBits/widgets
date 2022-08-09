import 'package:backdrop/app_bar.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class BackdropExample extends StatefulWidget {
  const BackdropExample({Key? key}) : super(key: key);

  @override
  State<BackdropExample> createState() => _BackdropExampleState();
}

class _BackdropExampleState extends State<BackdropExample> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text("Backdrop Demo"),
      ),
      headerHeight: 120,
      frontLayer: const Center(
        child: Text("font layer"),
      ),
      backLayer: const Center(
        child: Text("Back Layer"),
      ),
    );
  }
}

