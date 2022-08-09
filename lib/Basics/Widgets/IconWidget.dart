import 'package:flutter/material.dart';


class IconWidget extends StatefulWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Icon"),),
      body: const Center(
        child: Icon(Icons.image,color: Colors.blue,size: 100,),
      )
    );
  }
}
