import 'package:flutter/material.dart';

class DropdownButtonMenuButton extends StatefulWidget {
  const DropdownButtonMenuButton({Key? key}) : super(key: key);

  @override
  State<DropdownButtonMenuButton> createState() =>
      _DropdownButtonMenuButtonState();
}

class _DropdownButtonMenuButtonState extends State<DropdownButtonMenuButton> {
  static List<String> menuItems = <String>["One", "Two", "Three", "Four"];

  String _btn1SelectedVal = "One";
  String? _btn2SelectedVal;
  String? _btn3SelectedVal;

  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map((String value) => DropdownMenuItem(
            child: Text(value),
            value: value,
          ))
      .toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown MenuButton"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("DropDownButton with default:"),
            trailing: DropdownButton(
              value: _btn1SelectedVal,
              onChanged: (String? newVal) {
                if (newVal != null) {
                  setState(() {
                    _btn1SelectedVal = newVal;
                  });
                }
              },
              items: _dropDownMenuItems,
            ),
          ),

          ListTile(
            title: const Text("DropDownButton with hint:"),
            trailing: DropdownButton(
              value: _btn2SelectedVal,
              hint: const Text("Choose"),
              onChanged: (String? newVal) {
                if (newVal != null) {
                  setState(() {
                    _btn2SelectedVal = newVal;
                  });
                }
              },
              items: _dropDownMenuItems,
            ),
          ),
          ListTile(
            title: const Text("Popup menu button"),
            trailing: PopupMenuButton(
              onSelected: (String? newVal) {
                _btn3SelectedVal = newVal;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$_btn3SelectedVal"),
                  duration: const Duration(milliseconds: 500),
                ));
              },
              itemBuilder: (BuildContext context) {
                return menuItems
                    .map((String value) => PopupMenuItem(
                          child: Text(value),
                          value: value,
                        ))
                    .toList();
              },
            ),
          ),
        ],
      ),
    );
  }
}
