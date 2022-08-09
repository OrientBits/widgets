import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({Key? key}) : super(key: key);

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTile Example"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

class Entry {
  final String title;
  final List<Entry> children;

  Entry(this.title, [this.children = const <Entry>[]]);
}

List<Entry> data = [
  Entry(
    "Chapter A",
    [
      Entry(
        "Section A0",
        [
          Entry("Item A0.1"),
          Entry("Item A0.2"),
        ],
      ),
      Entry("Section A1"),
      Entry("Section A2"),
    ],
  ),
  Entry(
    "Chapter B",
    [
      Entry("Section B0"),
      Entry("Section B1"),
    ],
  ),
  Entry("Chapter C")
];

class EntryItem extends StatelessWidget {
  EntryItem(this.entry);
  final Entry entry;
  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
        onTap:()=> Fluttertoast.showToast(msg: root.title),
      );
    }
    return ExpansionTile(
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }
}
