import 'package:flutter/material.dart';
import 'package:widgets/Basics/Widgets/ButtonWidget.dart';
import 'package:widgets/Basics/Widgets/CardInkwell.dart';
import 'package:widgets/Basics/Widgets/DropdownButtonMenuButton.dart';
import 'package:widgets/Basics/Widgets/GradientWidget.dart';
import 'package:widgets/Basics/Widgets/IconWidget.dart';
import 'package:widgets/Basics/Widgets/ImageFilteredWidget.dart';
import 'package:widgets/Basics/Widgets/ImageWidget.dart';
import 'package:widgets/Basics/Widgets/OtherStatfulWidgets.dart';
import 'package:widgets/Basics/Widgets/TextFieldWidget.dart';
import 'package:widgets/Basics/Widgets/TextFormField.dart';
import 'package:widgets/Basics/Widgets/TextWidget.dart';

class Widgets extends StatefulWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Widgets"),
        ),
        body: ListView(
          children: [
            ListTile(
                title: const Text("Icon"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IconWidget()));
                }),
            const Divider(),
            ListTile(
                title: const Text("Text"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const TextWidget();
                  }));
                }),
            const Divider(),
            ListTile(
                title: const Text("TextField"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TextFieldWidget()));
                }),
            const Divider(),
            ListTile(
                title: const Text("TextFormField"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TextFormFieldWidget()));
                }),
            const Divider(),
            ListTile(
                title: const Text("Image"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWidget()));
                }),
            const Divider(),
            ListTile(
                title: const Text("Card, Inkwell"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CardInkwell()));
                }),

            const Divider(),

            ListTile(
                title: const Text("Gradient"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GradientWidget()));
                }),

            const Divider(),
            ListTile(
                title: const Text("Buttons"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ButtonWidget()));
                }),

            const Divider(),
            ListTile(
                title: const Text("DropdownButton MenuButton"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DropdownButtonMenuButton()));
                }),

            const Divider(),
            ListTile(
                title: const Text("Image Filtered Widget"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageFilteredWidget()));
                }),

            const Divider(),
            ListTile(
                title: const Text("Other Stateful widgets"),
                leading: const Icon(Icons.star_border),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtherStatefulWidgets()));
                }),
          ],
        ));
  }
}
