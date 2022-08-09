import 'package:flutter/material.dart';
import 'package:widgets/Basics/Lists/DataTableExample.dart';
import 'package:widgets/Basics/Lists/ListTileExample.dart';
import 'package:widgets/Basics/Lists/ListViewBuilderExample.dart';
import 'package:widgets/Basics/Lists/ReorderableListExample.dart';
import 'package:widgets/Basics/Lists/SlidableListTileExample.dart';

import 'ExpansionTileExample.dart';
import 'GridListExample.dart';
import 'ListWheelScrollViewExample.dart';
import 'SwipeToDismiss.dart';

class Lists extends StatefulWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lists"),),
      body: ListView(
        children: [
          ListTile(
              title: const Text("ListTile"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListTileExample()));
              }),

          const Divider(),
          ListTile(
              title: const Text("ListView Builder"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewBuilderExample()));
              }),

          const Divider(),
          ListTile(
              title: const Text("GridView Builder"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridListExample()));
              }),

          const Divider(),
          ListTile(
              title: const Text("ExpansionTile"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExpansionTileExample()));
              }),

          const Divider(),
          ListTile(
              title: const Text("SwipeToDismiss Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SwipeToDismiss()));
              }),


          const Divider(),
          ListTile(
              title: const Text("ReorderableList Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReorderableListExample()));
              }),

          const Divider(),
          ListTile(
              title: const Text("ListWheelScrollView Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListWheelScrollViewExample()));
              }),

          const Divider(),
          ListTile(
              title: const Text("SlidableListView Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SlidableListTileExample()));
              }),

          const Divider(),
          ListTile(
              title: const Text("DataTable Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataTableExample()));
              }),

        ],
      ),
    );
  }
}
