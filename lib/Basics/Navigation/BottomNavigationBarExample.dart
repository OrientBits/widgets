import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  final _kTabPages = [
    const Icon(
      Icons.cloud,
      color: Colors.teal,
      size: 164,
      key: ValueKey(1),
    ),
    Icon(Icons.alarm, color: Colors.cyan, size: 164, key: ValueKey(2)),
    Icon(Icons.forum, color: Colors.blue, size: 164, key: ValueKey(3)),
  ];

  final _kBottomNavBarItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Nav1"),
    const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Nav2"),
    const BottomNavigationBarItem(icon: Icon(Icons.forum), label: "Nav3"),
  ];

//_kTabPages[_currentTabIndex],
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation bar")),
      body: Center(
        child: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: _kTabPages[_currentTabIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _kBottomNavBarItems,
        currentIndex: _currentTabIndex,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
      ),
    );
  }
}
