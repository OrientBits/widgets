import 'package:flutter/material.dart';

class BottomTabBarExample extends StatefulWidget {
  const BottomTabBarExample({Key? key}) : super(key: key);

  @override
  State<BottomTabBarExample> createState() => _BottomTabBarExampleState();
}

class _BottomTabBarExampleState extends State<BottomTabBarExample> with TickerProviderStateMixin{
  late TabController _tabController;

  static const _kTabPages = [
    Center(child: Icon(Icons.cloud,size: 80,color: Colors.teal,),),
    Center(child: Icon(Icons.alarm,size: 80,color: Colors.cyan,),),
    Center(child: Icon(Icons.forum,size: 80,color: Colors.blue,),),
  ];

  final _kTabs = [
    const Tab(icon: Icon(Icons.cloud), text: "Tab1"),
    const Tab(icon: Icon(Icons.alarm), text: "Tab2"),
    const Tab(icon: Icon(Icons.forum), text: "Tab3"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _kTabPages.length, vsync: this);
  }


  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text("BottomTabBar Example"),),
      body: TabBarView(
        controller: _tabController,
        children: _kTabPages,
      ),

      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),

    );

  }
}
