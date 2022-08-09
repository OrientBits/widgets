import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DialogsExample extends StatefulWidget {
  const DialogsExample({Key? key}) : super(key: key);

  @override
  State<DialogsExample> createState() => _DialogsExampleState();
}

class _DialogsExampleState extends State<DialogsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Examples"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          // Alert Dialog
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Dialog Title"),
                    content: Text("Sample Alert"),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context, "Cancel"),
                          child: Text("Cancel")),
                      TextButton(
                          onPressed: () => Navigator.pop(context, "OK"),
                          child: Text("OK")),
                    ],
                  );
                },
              ).then((value) {
                if (value != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("You clicked $value"),
                    action: SnackBarAction(
                      label: "Ok",
                      onPressed: () {},
                    ),
                  ));
                }
              });
            },
            child: const Text("Alert Dialog"),
          ),
          //Simple Dialog
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.cyan),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: Text("Dialog Title"),
                    children: [
                      ListTile(
                        leading: const Icon(Icons.account_circle),
                        title: const Text("user@orintbits.com"),
                        onTap: () =>
                            Navigator.pop(context, "user@orientbits.com"),
                      ),
                      ListTile(
                        leading: const Icon(Icons.account_circle),
                        title: const Text("user2@orintbits.com"),
                        onTap: () =>
                            Navigator.pop(context, "user2@orientbits.com"),
                      ),
                      ListTile(
                        leading: const Icon(Icons.add_circle),
                        title: const Text("Add Account"),
                        onTap: () => Navigator.pop(context, "Add Account"),
                      )
                    ],
                  );
                },
              ).then((value) {
                if (value != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("You clicked $value"),
                    action: SnackBarAction(
                      label: "Ok",
                      onPressed: () {},
                    ),
                  ));
                }
              });
            },
            child: const Text("Simple Dialog"),
          ),
          //Time Picker
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            onPressed: () {
              final DateTime now = DateTime.now();
              showTimePicker(
                context: context,
                initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
              ).then((value) {
                if (value != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(value.format(context)),
                    action: SnackBarAction(
                      label: "Ok",
                      onPressed: () {},
                    ),
                  ));
                }
              });
            },
            child: const Text("Time Picker Dialog"),
          ),

          // Date Picker
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1990),
                lastDate: DateTime.now(),
              ).then((value) {
                if (value != null) {
                  DateTime _fromDate = DateTime.now();
                  _fromDate = value;
                  String date = DateFormat.yMMMd().format(_fromDate);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Selected date: $date")));
                }
              });
            },
            child: const Text("Date Picker Dialog"),
          ),

          //Data Range Picker
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.indigoAccent),
            onPressed: () {
              showDateRangePicker(
                context: context,
                firstDate: DateTime(2015),
                lastDate: DateTime(2025),
              ).then((value) {
                if (value != null) {
                  DateTimeRange _fromRange =
                      DateTimeRange(start: DateTime.now(), end: DateTime.now());
                  _fromRange = value;
                  String range =
                      "${DateFormat.yMMMd().format(_fromRange.start)} - ${DateFormat.yMMMd().format(_fromRange.end)}";
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(range)));
                }
              });
            },
            child: Text("Date Range Picker"),
          ),

          //Bottom Sheet Dialog
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.teal),
            onPressed: () {
              debugPrint("Bottom Sheet clicked:::::::::");
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  decoration: const BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.black12)),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    primary: false,
                    children: [
                      const ListTile(
                        dense: true,
                        title: Text("This is a bottom sheet"),
                      ),
                      const ListTile(
                        dense: true,
                        title: Text("Click Ok to dismiss"),
                      ),
                      ButtonBar(
                        children: [
                          TextButton(
                            onPressed: () {
                              return Navigator.pop(context);
                            },
                            child: Text("OK"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            child: Text("Bottom Sheet"),
          ),
        ]
            .map((Widget button) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: button,
                ))
            .toList(),
      ),
    );
  }
}
