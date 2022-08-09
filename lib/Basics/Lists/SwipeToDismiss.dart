import 'package:flutter/material.dart';

class SwipeToDismiss extends StatefulWidget {
  const SwipeToDismiss({Key? key}) : super(key: key);

  @override
  State<SwipeToDismiss> createState() => _SwipeToDismissState();
}

class _SwipeToDismissState extends State<SwipeToDismiss> {
  final _items = List.generate(50, (index) => "Item ${index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SwipeToDismiss Example"),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, idx) {
          if (idx.isOdd) {
            return const Divider(height: 2, color: Colors.grey);
          } else {
            int index = idx ~/2 + 1;
            final String item = _items[index];
            return Dismissible(
              key: Key(item),
              child: ListTile(
                title: Center(
                  child: Text(_items[index]),
                ),
              ),
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: const Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                alignment: Alignment.centerRight,
                child: const Icon(Icons.thumb_up),
              ),
              onDismissed: (DismissDirection dir) {
                setState(() {
                  _items.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(
                        dir == DismissDirection.startToEnd
                            ? "$item removed"
                            : "$item linked")));
              },
            );
          }
        },
      ),
    );
  }
}
