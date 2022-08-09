import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class ConvexAppbarExample extends StatefulWidget {
  const ConvexAppbarExample({Key? key}) : super(key: key);

  @override
  State<ConvexAppbarExample> createState() => _ConvexAppbarExampleState();
}

class _ConvexAppbarExampleState extends State<ConvexAppbarExample> {
  final _kPages = <String, IconData>{
    "home": Icons.home,
    "map": Icons.map,
    "add": Icons.add,
    "message": Icons.message,
    "People": Icons.people
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(title: const Text("ConvexAppbar Example")),
        body: Center(
          child: TabBarView(
            children: [
              Container(color: Colors.blueGrey,child: Icon(Icons.home, size: 150),),
              Container(color: Colors.purple,child: Icon(Icons.map, size: 150),),
              Container(color: Colors.deepPurple,child: Icon(Icons.add, size: 150),),
              Container(color: Colors.greenAccent,child: Icon(Icons.message, size: 150),),
              Container(color: Colors.indigoAccent,child: Icon(Icons.people, size: 150),),
              //for (final icon in _kPages.values) Icon(icon, size: 150),
            ],
          ),
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          const {3: "99+"},
          style: TabStyle.react,
          items: [
            for (final entry in _kPages.entries)
              TabItem(icon: entry.value, title: entry.key)
          ],
        ),
      ),
    );
  }
}
