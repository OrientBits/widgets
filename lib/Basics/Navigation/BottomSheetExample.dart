import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Bottom Sheet example"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black
          ),
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (ctx) => _buildBottomSheet(ctx));
            },
            child: const Text("Show model Bottom Sheet")),
      ),
    );
  }

  Container _buildBottomSheet(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        color: Colors.white,
      ),
      height: 200,

      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.grey,
            primary: Colors.black
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Close Sheet"),

        ),
      ),
    );
  }
}
