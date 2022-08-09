import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatefulWidget {
  const FractionallySizedBoxWidget({Key? key}) : super(key: key);

  @override
  State<FractionallySizedBoxWidget> createState() => _FractionallySizedBoxWidgetState();
}

class _FractionallySizedBoxWidgetState extends State<FractionallySizedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FractionallySizedBox"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            SizedBox(height: 20),
            Text("Fractionally sized box sizes its child to a fraction of the total available space"),

            Flexible(child: FractionallySizedBox(
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Placeholder(),
            )),
            Text("Fractionally sized box sizes its child to a fraction of the total available space"),

          ],
        ),
      ),
    );
  }
}
