import 'package:flutter/material.dart';

class ExpandedSizedBox extends StatefulWidget {
  const ExpandedSizedBox({Key? key}) : super(key: key);

  @override
  State<ExpandedSizedBox> createState() => _ExpandedSizedBoxState();
}

class _ExpandedSizedBoxState extends State<ExpandedSizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded : SizedBox"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.indigoAccent,
              child: const Text("Item1: flex=1"),
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blueGrey,
              child: const Text("Item2: flex=2"),
            ),
          ),
          const SizedBox(height: 20,),

          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: const Text("Item3, Flex=3"),
            ),
          )

        ],
      ),
    );
  }
}
