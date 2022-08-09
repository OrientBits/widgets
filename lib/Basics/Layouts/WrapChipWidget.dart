import 'package:flutter/material.dart';
import 'dart:math' as math;

class WarpChipWidget extends StatefulWidget {
  const WarpChipWidget({Key? key}) : super(key: key);

  @override
  State<WarpChipWidget> createState() => _WarpChipWidgetState();
}

class _WarpChipWidgetState extends State<WarpChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Widget"),
      ),
      body: ListView(
        children: [
          Wrap(
            spacing: 15,
            runSpacing: 0,
            children: ["Cauchy", "Lebesgue", "Levy", "Poisson", "PintCare"]
                .map((String name) => Chip(
              deleteIcon: Icon(Icons.delete),
                      backgroundColor: Colors.blueGrey,
                      label: Text(
                        name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      avatar: CircleAvatar(
                        child: Text(name.substring(0, 1)),
                        //backgroundColor: Colors.white,
                      ),
                      elevation: 3,

                    ))
                .toList(),
          ),

          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Icon(Icons.message, size: 100,),
          ),

          ActionChip(
            elevation: 8.0,
            padding: EdgeInsets.all(2.0),
            avatar: CircleAvatar(
              backgroundColor: Colors.redAccent,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: const Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            label: const Text('Message'),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: const Text("Hello Orient")));
            },
            backgroundColor: Colors.yellow,
            shape: const StadiumBorder(
                side: BorderSide(
              width: 2,
              color: Colors.red,
            )),

          ),

        ],
      ),
    );
  }
}
