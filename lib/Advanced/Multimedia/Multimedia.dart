import 'package:flutter/material.dart';
import 'package:widgets/Advanced/Multimedia/VideoPlayerExample.dart';
import 'ExtendedImageExample.dart';
import 'ImagePickerExample.dart';

class Multimedia extends StatefulWidget {
  const Multimedia({Key? key}) : super(key: key);

  @override
  State<Multimedia> createState() => _MultimediaState();
}

class _MultimediaState extends State<Multimedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Multimedia Example"),),
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
                      builder: (context) => const ImagePickerExample()));
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("ExtendedImage Example"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExtendedImageExample()));
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("VideoPlayer Example"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VideoPlayerExample()));
            },
          ),
          const Divider(),


        ],
      ),
    );
  }
}
