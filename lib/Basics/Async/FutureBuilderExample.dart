import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({Key? key}) : super(key: key);

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FutureBuilder Example"),),
      body: Container(
        margin: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("In this example we first have an asyc operation that takes "
                "3 second and succeeds with the content of an image from asset"
                "Note this is just for demonstration purposes, normally we just use Image.asset()"),

            const SizedBox(height: 50),

            FutureBuilder<ByteData>(
              future: _wait3SecAndLoadImage(),
              builder: (context,snapshot){
                if(!snapshot.hasData){
                  return const CircularProgressIndicator();
                }else{
                  if(snapshot.hasError){
                    return const Text("Error has happened in the future!");
                  }else{
                    return Image.memory(snapshot.data!.buffer.asUint8List());
                  }
                }
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
