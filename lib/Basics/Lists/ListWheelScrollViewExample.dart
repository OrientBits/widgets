import 'package:flutter/material.dart';

class ListWheelScrollViewExample extends StatefulWidget {
  const ListWheelScrollViewExample({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewExample> createState() =>
      _ListWheelScrollViewExampleState();
}

class _ListWheelScrollViewExampleState
    extends State<ListWheelScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("ListWheelScrollView Example"),
      ),
      body: ListWheelScrollView.useDelegate(
          itemExtent: 75, childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            if (index < 0 || index > 15) {
              return null;
            }
            return ListTile(
              leading: Text("$index", style: TextStyle(fontSize: 50),),
              title: Text("Title $index"),
              subtitle: Text("Description of $index"),
            );
          })
      ),
    );
  }
}
