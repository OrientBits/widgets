import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:widgets/Profie/AboutUsPage.dart';
import 'package:widgets/Advanced/AdvancePage.dart';
import 'package:widgets/Basics/Home.dart';

class HomeBottomNavigation extends StatefulWidget {
  final String title;

  const HomeBottomNavigation({Key? key, required this.title}) : super(key: key);

  @override
  State<HomeBottomNavigation> createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  int _currentTabIndex = 0;

  final _kBottomNavBarItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
        icon: Icon(Icons.library_books), label: "Basic"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.stacked_line_chart), label: "Advanced"),
    const BottomNavigationBarItem(icon: Icon(Icons.star), label: "Bookmarks"),
  ];

  final _kPages = [
    MyHomePage(),
    AdvancePage(),
    AboutUsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: PageTransitionSwitcher(
        //duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation) {
          return FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: _kPages[_currentTabIndex],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Fluttertoast.showToast(msg: "Share will up enabled soon...");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.share),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
