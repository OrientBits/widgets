import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets/Basics/Async/FutureBuilderExample.dart';
import 'package:widgets/Basics/Async/StreamBuilderExample.dart';
import 'package:widgets/Basics/Async/StreamControllerExample.dart';

class Asyncs extends StatefulWidget {
  const Asyncs({Key? key}) : super(key: key);

  @override
  State<Asyncs> createState() => _AsyncsState();
}

class _AsyncsState extends State<Asyncs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Async Example"),
      ),
      body: Container(
        margin: const EdgeInsets.all(18),
        child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.star_border),
                title: const Text("FutureBuilder"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FutureBuilderExample()));
                },
              ),
              const Divider(height: 1,color: Colors.blue,),

              ListTile(
                leading: const Icon(Icons.star_border),
                title: const Text("StreamBuilder Example"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StreamBuilderExample()));
                },
              ),
              const Divider(height: 1,color: Colors.blue,),

              ListTile(
                leading: const Icon(Icons.star_border),
                title: const Text("Stream Controller"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StreamControllerExample()));
                },
              ),

            ],
          ),
      ),
    );
  }

  Future<ByteData> _wait3SecAndLoadImage() async {
    await Future.delayed(const Duration(seconds: 3));
    return rootBundle.load("assets/flutterimg.jpg");
  }
}
