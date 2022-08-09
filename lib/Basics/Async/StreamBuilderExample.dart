import 'package:flutter/material.dart';

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({Key? key}) : super(key: key);

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  int _timeValue = 0;
  bool _paused = true;
  final Stream<int> _periodicStream =
      Stream.periodic(const Duration(milliseconds: 1000), (i) => i);
  int _previousStreamValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stream Builder")),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(18),
        child: StreamBuilder<int>(
          stream: _periodicStream,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != _previousStreamValue) {
                _previousStreamValue = snapshot.data!;
                if (!_paused) {
                  _timeValue++;
                }
              }
            }
            return Column(
              children: [
                const Text(
                    "StreamBuilder can listen to a stream to a stream and update UI"),
                Card(
                  child: Column(
                    children: [
                      Text(
                        "$_timeValue",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _paused = !_paused;
                                });
                              },
                              icon: Icon(
                                  _paused ? Icons.play_arrow : Icons.pause)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _timeValue = 0;
                                  _paused = true;
                                });
                              },
                              icon: const Icon(Icons.stop)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
