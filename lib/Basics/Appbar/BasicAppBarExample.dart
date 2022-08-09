import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BasicAppBarExample extends StatefulWidget {
  const BasicAppBarExample({Key? key}) : super(key: key);

  @override
  State<BasicAppBarExample> createState() => _BasicAppBarExampleState();
}

class _BasicAppBarExampleState extends State<BasicAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //leading: const Icon(Icons.tag_faces),
        title: const Text("Sample title"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.directions_bus)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.directions_bike)),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                // row with 2 children
                child: Row(
                  children: const [
                    Icon(Icons.star,color: Colors.blue),
                    SizedBox(width: 10),
                    Text("Get The App")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: const [
                    Icon(Icons.chrome_reader_mode,color: Colors.blue,),
                    SizedBox(width: 10),
                    Text("About")
                  ],
                ),
              ),
            ],
            offset: const Offset(0, 100),
            color: Colors.white,
            elevation: 2,
            onSelected: (value) {
              if (value == 1) {
                _showDialog(context);
              } else if (value == 2) {
                _showDialog(context);
              }
            },
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!!"),
          content: const Text("You are awesome!"),
          actions: [
            MaterialButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
