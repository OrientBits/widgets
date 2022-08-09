import 'package:flutter/material.dart';
import 'package:widgets/Basics/Layouts/ContainerLayour.dart';
import 'package:widgets/Basics/Layouts/ExpandedSizedbox.dart';
import 'package:widgets/Basics/Layouts/FractionallySizedBoxWidget.dart';
import 'package:widgets/Basics/Layouts/RowColumnLayout.dart';
import 'package:widgets/Basics/Layouts/StackWidgets.dart';
import 'package:widgets/Basics/Layouts/WrapChipWidget.dart';

class Layouts extends StatefulWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  State<Layouts> createState() => _LayoutsState();
}

class _LayoutsState extends State<Layouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Layout"),
        ),
        body: ListView(
          children: [
            ListTile(
                title: const Text("Container"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContainerLayout()));
                }),

            const Divider(),
            ListTile(
                title: const Text("Row, Column"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RowColumnLayout()));
                }),

            const Divider(),
            ListTile(
                title: const Text("Wrap Widget"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WarpChipWidget()));
                }),

            const Divider(),
            ListTile(
                title: const Text("FractionallySizedBox"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FractionallySizedBoxWidget()));
                }),

            const Divider(),
            ListTile(
                title: const Text("Expanded SizedBox"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExpandedSizedBox()));
                }),

            const Divider(),
            ListTile(
                title: const Text("Stack"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StackWidgets()));
                }),

          ],
        ));
  }
}
