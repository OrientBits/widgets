import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieExample extends StatefulWidget {
  const LottieExample({Key? key}) : super(key: key);

  @override
  State<LottieExample> createState() => _LottieExampleState();
}

class _LottieExampleState extends State<LottieExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Example"),
      ),
      body: ListView(
        children: [
          Lottie.asset("assets/lotties/space.json", height: 250),
          Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
              height: 200),
          Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_oc9peor8.json',
              height: 250)
        ],
      ),
    );
  }
}
