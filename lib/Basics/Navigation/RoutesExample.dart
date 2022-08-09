import 'package:flutter/material.dart';

class RoutesExample extends StatefulWidget {
  const RoutesExample({Key? key}) : super(key: key);

  @override
  State<RoutesExample> createState() => _RoutesExampleState();
}

class _RoutesExampleState extends State<RoutesExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routes Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, _PageTwo());
          },
          child: Text("Go to Page two"),
        ),
      ),
    );
  }
}

class _PageTwo extends MaterialPageRoute {
  _PageTwo()
      : super(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Page 2"),
              ),
              body: Builder(
                builder: (context) {
                  return Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, _PageThree()).then((value) {
                          ScaffoldMessenger.of(context).removeCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("You clicked: $value"),
                            action:
                                SnackBarAction(label: "Ok", onPressed: () {}),
                          ));
                        });
                      },
                      child: const Text("Go to Page 3"),
                    ),
                  );
                },
              ),
            );
          },
        );
}

class _PageThree extends MaterialPageRoute {
  _PageThree()
      : super(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Page Three"),
            ),
            body: ListView(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    child: Text("1"),
                  ),
                  title: const Text("user1@orientbits.com"),
                  onTap: () => Navigator.pop(context, "user1@orientbits.com"),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    child: Text("2"),
                  ),
                  title: const Text("user2@example.com"),
                  onTap: () => Navigator.pop(context, "user2@orientbits.com"),
                )
              ],
            ),
          );
        });
}
