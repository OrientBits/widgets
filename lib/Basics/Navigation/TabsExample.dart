import 'package:flutter/material.dart';

class TabsExample extends StatefulWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  State<TabsExample> createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {
  final _kTabPages = [
    const Center(child: Icon(Icons.cloud, color: Colors.teal, size: 100)),
    const Center(child: Icon(Icons.alarm, color: Colors.cyan, size: 100)),
    const Center(child: Icon(Icons.forum, color: Colors.blue, size: 100)),
  ];

  final _kTabs = [
    const Tab(icon: Icon(Icons.cloud), text: "Tab1"),
    const Tab(icon: Icon(Icons.alarm), text: "Tab2"),
    const Tab(icon: Icon(Icons.forum), text: "Tab3"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabPages.length,
      child: Scaffold(

        appBar: AppBar(
          title: const Text("appbar title"),
          backgroundColor: Colors.cyan,
          bottom: TabBar(
            tabs: _kTabs,
            indicatorColor: Colors.white,
          ),
        ),

        body: TabBarView(
          children: _kTabPages,
        ),

      ),
    );
  }
}
