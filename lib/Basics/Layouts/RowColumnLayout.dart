import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RowColumnLayout extends StatefulWidget {
  const RowColumnLayout({Key? key}) : super(key: key);

  @override
  State<RowColumnLayout> createState() => _RowColumnLayoutState();
}

class _RowColumnLayoutState extends State<RowColumnLayout> {
  List<Widget> kElement = [
    const Icon(Icons.star, size: 50),
    const Icon(Icons.star, size: 100),
    const Icon(Icons.star, size: 50)
  ];

  bool _isRow = true;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Column"),
      ),
      body: _buildBody(),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _buildBody() {
    return Container(
        color: Colors.yellow,
        child: _isRow
            ? Row(
                mainAxisAlignment: _mainAxisAlignment,
                crossAxisAlignment: _crossAxisAlignment,
                mainAxisSize: _mainAxisSize,
                children: kElement,
              )
            : Column(
                mainAxisAlignment: _mainAxisAlignment,
                crossAxisAlignment: _crossAxisAlignment,
                mainAxisSize: _mainAxisSize,
                children: kElement,
              ));
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Radio(
                  value: true,
                  groupValue: _isRow,
                  onChanged: (bool? value) {
                    if (value != null) {
                      setState(() {
                        _isRow = value;
                      });
                    }
                  }),
              const Text("Row"),
              Radio(
                value: false,
                groupValue: _isRow,
                onChanged: (bool? value) {
                  if (value != null) {
                    setState(() {
                      _isRow = value;
                    });
                  }
                },
              ),
              const Text("Column"),
            ],
          ),
          ListTile(
            title: const Text("mainAxisSize:"),
            trailing: DropdownButton(
              value: _mainAxisSize,
              items: MainAxisSize.values
                  .map((MainAxisSize val) => DropdownMenuItem(
                        child: Text(val
                            .toString()
                            .substring("MainAxisSize".length + 1)),
                        value: val,
                      ))
                  .toList(),
              onChanged: (MainAxisSize? newVal) {
                if (newVal != null) {
                  setState(() {
                    Fluttertoast.showToast(msg: _mainAxisSize.toString());
                    _mainAxisSize = newVal;
                  });
                }
              },
            ),
          ),

          ListTile(
            title: const Text("mainAxisAlignment:"),
            trailing: DropdownButton(
              value: _mainAxisAlignment,
              items: MainAxisAlignment.values
                  .map((MainAxisAlignment val) => DropdownMenuItem(
                        child: Text(val
                            .toString()
                            .substring("MainAxisAlignment".length + 1)),
                        value: val,
                      ))
                  .toList(),
              onChanged: (MainAxisAlignment? newVal) {
                if (newVal != null) {
                  setState(() {
                    Fluttertoast.showToast(msg: _mainAxisAlignment.toString());
                    _mainAxisAlignment = newVal;
                  });
                }
              },
            ),
          ),


          ListTile(
            title: const Text("crossAxisAlignment:"),
            trailing: DropdownButton(
              value: _crossAxisAlignment,
              items: CrossAxisAlignment.values
                  .map((CrossAxisAlignment val) => DropdownMenuItem(
                child: Text(val
                    .toString()
                    .substring("CrossAxisAlignment".length + 1)),
                value: val,
              ))
                  .toList(),
              onChanged: (CrossAxisAlignment? newVal) {
                if (newVal != null) {
                  setState(() {
                    Fluttertoast.showToast(msg: _crossAxisAlignment.toString());
                    _crossAxisAlignment = newVal;
                  });
                }
              },
            ),
          ),

        ],
      ),
    );
  }
}
