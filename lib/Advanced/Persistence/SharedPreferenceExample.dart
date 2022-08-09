import 'package:flutter/material.dart';

class SharedPreferenceExample extends StatefulWidget {
  const SharedPreferenceExample({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceExample> createState() => _SharedPreferenceExampleState();
}

class _SharedPreferenceExampleState extends State<SharedPreferenceExample> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preference example"),),
      body: Table(
        children: [
         TableRow(
           children: [
             const Text("Number Preference: "),
             const Text("Count"),
             ElevatedButton(onPressed: (){}, child: const Text("Increment"))
           ]
         )
        ],
      ),
    );
  }
}
