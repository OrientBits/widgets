import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Column(
            children: [
              const Text(
                  "Raised buttons add dimension to mostly flat layouts. They emphasize functions on busy or wide spaces"),
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _showSnack();
                      },
                      child: const Text("ElevatedButton")
                  ),
                  const ElevatedButton(
                      onPressed: null, child: Text("Disabled-ElevatedButton"))
                ],
              ),
            ],
          ),
          const Divider(),

          Column(
            children: [
              const Text(
                  "A flat button displays an ink splash or press but does not lift. use flat buttons on toolbars,"
                  "in dialogs and inline with padding"),
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        _showToast();
                      },
                      child: const Text("TextButton")),
                  const TextButton(
                      onPressed: null, child: Text("Disabled-TextButton")),
                ],
              )
            ],
          ),

          const Divider(),
          Column(
            children: [
              const Text(
                  "Tooltips are short identifying messages that briefly appearing response to a long press"
                  "Tooltip message are also used by services that make flutter apps accessible like screen readers"),
              Center(
                child: IconButton(
                    onPressed: () {
                      _showSnack();
                    },
                    tooltip: "Place a phone call",
                    icon: const Icon(Icons.call),
                ),
              )
            ],
          )
        ],
      ),
    );
  }



  void _showToast() => Fluttertoast.showToast(
      msg: "Button Tapped", toastLength: Toast.LENGTH_SHORT);

  void _showSnack() =>
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Button Tapped"),
        duration: Duration(milliseconds: 500),
      ));
}
