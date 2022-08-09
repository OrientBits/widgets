import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: const Card(
          elevation: 10,
          child: SizedBox(
            height: 300,
            width: 300,
            child: Center(child: Text("About Us Pages\nComing Soon"),
            ),
          ),
        ),
      ),
    );
  }
}
