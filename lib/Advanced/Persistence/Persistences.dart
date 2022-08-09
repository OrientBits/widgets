import 'package:flutter/material.dart';
import 'package:widgets/Advanced/Persistence/SharedPreferenceExample.dart';

class Persistences extends StatefulWidget {
  const Persistences({Key? key}) : super(key: key);

  @override
  State<Persistences> createState() => _PersistencesState();
}

class _PersistencesState extends State<Persistences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Persistence Example"),),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Image Picker"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SharedPreferenceExample()));
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
