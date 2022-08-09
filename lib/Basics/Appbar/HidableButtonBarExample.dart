import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';

class HidableButtonBarExample extends StatefulWidget {
  const HidableButtonBarExample({Key? key}) : super(key: key);

  @override
  State<HidableButtonBarExample> createState() =>
      _HidableButtonBarExampleState();
}

class _HidableButtonBarExampleState extends State<HidableButtonBarExample> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HidableButtonBar Example")),
      body: ListView.separated(
        itemBuilder: (_, i) => Container(
          height: 80,
          color: Colors.primaries[i % Colors.primaries.length],
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: 10,
        ),
        itemCount: 100,
      ),
      bottomNavigationBar: Hidable(
        controller: ScrollController(),
        child: BottomNavigationBar(
          currentIndex: _index,
          onTap: (i) => setState(() {
            _index = i;
          }),
          items: bottomBarItems1(),
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomBarItems1() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
        backgroundColor: Colors.blue,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorites",
        backgroundColor: Colors.amber,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profile",
        backgroundColor: Colors.green,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Settings",
        backgroundColor: Colors.purple,
      ),
    ];
  }
}
