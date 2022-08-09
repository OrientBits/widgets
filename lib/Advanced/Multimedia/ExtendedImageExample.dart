import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExtendedImageExample extends StatefulWidget {
  const ExtendedImageExample({Key? key}) : super(key: key);

  @override
  State<ExtendedImageExample> createState() => _ExtendedImageExampleState();
}

class _ExtendedImageExampleState extends State<ExtendedImageExample> {
  final _editorKey = GlobalKey<ExtendedImageEditorState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExtendedImage Example"),
      ),
      body: ExtendedImage.asset(
        "assets/flutter_1.png",
        fit: BoxFit.contain,
        mode: ExtendedImageMode.editor,
        extendedImageEditorKey: _editorKey,
        initEditorConfigHandler: (state) {
          return EditorConfig(
            maxScale: 8.0,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.rotate_left), label: "Rotate Right"),
          BottomNavigationBarItem(
              icon: Icon(Icons.rotate_right), label: "Rotate Left"),
          BottomNavigationBarItem(icon: Icon(Icons.lock_reset), label: "Rest")
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            Fluttertoast.showToast(msg: "$index");
            currentIndex = index;
          });

          switch (index) {
            case 0:
              _editorKey.currentState?.rotate();
              break;

            case 1:
              _editorKey.currentState?.rotate(right: false);
              break;

            default:
              _editorKey.currentState?.reset();
          }
        },
      ),
    );
  }
}
