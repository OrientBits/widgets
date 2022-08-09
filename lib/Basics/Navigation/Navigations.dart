import 'package:flutter/material.dart';
import 'package:widgets/Basics/Navigation/BottomNavigationBarExample.dart';
import 'package:widgets/Basics/Navigation/DialogsExample.dart';
import 'package:widgets/Basics/Navigation/RoutesExample.dart';
import 'package:widgets/Basics/Navigation/TabsExample.dart';

import 'BottomSheetExample.dart';
import 'BottomTabBarExample.dart';
import 'NavigationDrawerExample.dart';
import 'PageSelectorExample.dart';

class Navigations extends StatefulWidget {
  const Navigations({Key? key}) : super(key: key);

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigations"),),
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
                        builder: (context) => const TabsExample()));
              }),
          Divider(),

          ListTile(
              title: const Text("BottomTabBar Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomTabBarExample()));
              }),
          Divider(),

          ListTile(
              title: const Text("BottomNavigationBar Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavigationBarExample()));
              }),
          Divider(),

          ListTile(
              title: const Text("Dialogs Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DialogsExample()));
              }),
          Divider(),

          ListTile(
              title: const Text("Navigation Drawer Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationDrawerExample()));
              }),
          Divider(),

          ListTile(
              title: const Text("PageSelector Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageSelectorExample()));
              }),
          Divider(),

          ListTile(
              title: const Text("Routs Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RoutesExample()));
              }),
          Divider(),

          ListTile(
              title: const Text("Bottom Sheet Example"),
              leading: const Icon(Icons.star_border),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomSheetExample()));
              }),
          Divider(),



        ],
      ),
    );
  }
}
