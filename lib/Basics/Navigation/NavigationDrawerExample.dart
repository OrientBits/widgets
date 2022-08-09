import 'package:flutter/material.dart';

class NavigationDrawerExample extends StatefulWidget {
  const NavigationDrawerExample({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerExample> createState() =>
      _NavigationDrawerExampleState();
}

class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Drawer Example"),
      ),
      body: const Center(
        child: Text("Swip or click upper left icon to see the drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("user.name@orientbits.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: FlutterLogo(
                  size: 42.0,
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("A"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("B"),
                )
              ],
            ),
            ListTile(
              title: const Text("To page 1"),
              onTap: () => Navigator.of(context).push(_NewPage(1)),
            ),
            ListTile(
              title: const Text("To page 2"),
              onTap: () => Navigator.of(context).push(_NewPage(2)),
            ),
            ListTile(
              title: const Text("other drawer item"),
              onTap: () {},
            ),
          ],
        ),
      ),

    );
  }
}

class _NewPage extends MaterialPageRoute {
  _NewPage(int id)
      : super(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Page $id"),
              elevation: 1,
            ),
            body: Center(
              child: Text("Page $id"),
            ),
          );
        });
}
