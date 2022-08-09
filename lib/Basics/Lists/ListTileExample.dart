import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  final listTile = [
    const ListTile(
      title: Text("Tile 0 basic"),
    ),
    const Divider(),
    const ListTile(
      leading: Icon(Icons.face),
      title: Text("Tile 1: with leading/trailing widgets"),
      trailing: Icon(Icons.tag_faces),
    ),
    const Divider(),
    const ListTile(
      title: Text("Tile 2: title"),
      subtitle: Text("Subtitle of tile 2"),
    ),
    const Divider(),
    const ListTile(
      title: Text("Tile 3: 3 lines"),
      isThreeLine: true,
      subtitle: Text("Subtitle of tile 3\nThird line => Hello OrinetBits"),
    ),
    const Divider(),
    const ListTile(
      title: Text("Tile 4: dense"),
      dense: true,
    ),
    const Divider(),
    ListTile(
      title: const Text("Tile 5: tile with badges"),
      subtitle: const Text("(This use the badges package)"),
      trailing: Badge(
        badgeContent: const Text("3"),
        badgeColor: Colors.lightBlue,
        child: const Icon(Icons.message),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile Example"),
      ),
      body: ListView(children: listTile),
    );
  }

}
