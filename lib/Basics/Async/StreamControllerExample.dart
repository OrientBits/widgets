import 'dart:async';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class StreamControllerExample extends StatefulWidget {
  const StreamControllerExample({Key? key}) : super(key: key);

  @override
  State<StreamControllerExample> createState() =>
      _StreamControllerExampleState();
}

class _StreamControllerExampleState extends State<StreamControllerExample> {
  final _inputStreamController = StreamController<_Data>();
  final _outputStreamController = StreamController<Widget>();

  @override
  void initState() {
    super.initState();
    void _onData(_Data data) {
      final widgetToRender = ListTile(
          title: Text(data.message), subtitle: Text(data.timestamp.toString()));
      _outputStreamController.sink.add(widgetToRender);
    }
    _inputStreamController.stream.listen(_onData);
  }


  @override
  void dispose() {
    _inputStreamController.close();
    _outputStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StreamController Example")),
      body: ListView(
        children: [
          const Text(
              "Stream Controller is like a pipe with sink as input and stream as output"),
          Card(
            elevation: 4,
            child: StreamBuilder<Widget>(
                stream: _outputStreamController.stream,
                builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
                  if(!snapshot.hasData){
                    return const ListTile(
                      leading: CircularProgressIndicator(),
                      title: Text("No Data available"),
                    );
                  }
                  final Widget widgetToRender = snapshot.data!;
                  return widgetToRender;
                },
            ),
          ),

          ElevatedButton(onPressed: (){
            _inputStreamController.sink.add(
              _Data(generateWordPairs().first.toString(), DateTime.now())
            );
          }, child: const Text("Send Random word to input Stream")),

        ],
      ),
    );
  }
}

class _Data {
  final String message;
  final DateTime timestamp;

  _Data(this.message, this.timestamp);
}
