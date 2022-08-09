import 'package:flutter/material.dart';

class GridListExample extends StatefulWidget {
  const GridListExample({Key? key}) : super(key: key);

  @override
  State<GridListExample> createState() => _GridListExampleState();
}

class _GridListExampleState extends State<GridListExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          100,
          (index) => Center(
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              elevation: 4,
              child: Container(
                alignment: AlignmentDirectional.center,
                width: MediaQuery.of(context).size.height/4.5,
                height: MediaQuery.of(context).size.height/4.5,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.blue.shade50
                ),
                child: Text(
                  "item $index",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
