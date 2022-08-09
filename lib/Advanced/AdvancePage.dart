import 'package:flutter/material.dart';
import 'package:widgets/Advanced/Multimedia/Multimedia.dart';
import 'package:widgets/Advanced/Persistence/Persistences.dart';

import 'AdvanceAnimation/AdvanceAnimation.dart';

class AdvancePage extends StatefulWidget {
  const AdvancePage({Key? key}) : super(key: key);

  @override
  State<AdvancePage> createState() => _AdvancePageState();
}

class _AdvancePageState extends State<AdvancePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdvanceAnimation()));
              },
              child: const Text("Advance Animation"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Multimedia()));
              },
              child: const Text("Multimedia"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Persistences()));
              },
              child: const Text("Persistence"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
              onPressed: () {},
              child: const Text("Animation"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
              onPressed: () {},
              child: const Text("Animation"),
            ),
          ),
        ],
      ),
    );
  }
}
