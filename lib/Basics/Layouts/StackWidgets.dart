import 'package:flutter/material.dart';

class StackWidgets extends StatefulWidget {
  const StackWidgets({Key? key}) : super(key: key);

  @override
  State<StackWidgets> createState() => _StackWidgetsState();
}

class _StackWidgetsState extends State<StackWidgets> {
  AlignmentDirectional _alignmentDirectional = AlignmentDirectional.topStart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widgets"),
      ),
      body: Center(
        child: Stack(
          alignment: _alignmentDirectional,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    const kAlignmentDirectionalValues = <String, AlignmentDirectional>{
      "topStart": AlignmentDirectional.topStart,
      "topCenter": AlignmentDirectional.topCenter,
      "topEnd": AlignmentDirectional.topEnd,
      "center": AlignmentDirectional.center,
      "centerEnd": AlignmentDirectional.centerEnd,
      "centerStart": AlignmentDirectional.centerStart,
      "bottomStart": AlignmentDirectional.bottomStart,
      "bottomCenter": AlignmentDirectional.bottomCenter,
      "bottomEnd": AlignmentDirectional.bottomEnd,
    };

    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text("AlignmentDirectional"),
            trailing: DropdownButton(
              value: _alignmentDirectional,
              items: kAlignmentDirectionalValues
                  .map((String name, AlignmentDirectional val) => MapEntry(
                      name,
                      DropdownMenuItem(
                        value: val,
                        child: Text(name),
                      )))
                  .values
                  .toList(),
              onChanged: (AlignmentDirectional? value) {
                if(value != null){
                  setState(() {
                    _alignmentDirectional = value;
                  });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
