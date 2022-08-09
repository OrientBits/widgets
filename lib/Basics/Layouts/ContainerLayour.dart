import 'package:flutter/material.dart';

class ContainerLayout extends StatefulWidget {
  const ContainerLayout({Key? key}) : super(key: key);

  @override
  State<ContainerLayout> createState() => _ContainerLayoutState();
}

class _ContainerLayoutState extends State<ContainerLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Center(

        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(16),

            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5,color: Colors.orange),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),

              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                transform: Matrix4.rotationZ(-0.1),

                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(10.0),
                      right: Radius.circular(30.0),
                    ),
                  ),
                  alignment: Alignment.topLeft,
                  child: const Center(child: Text("Hello")),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
