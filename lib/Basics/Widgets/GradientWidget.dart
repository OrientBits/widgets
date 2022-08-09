import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'dart:math' show pi;

class GradientWidget extends StatefulWidget {
  const GradientWidget({Key? key}) : super(key: key);

  @override
  State<GradientWidget> createState() => _GradientWidgetState();
}

class _GradientWidgetState extends State<GradientWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Text("Gradient"),
        gradient: const LinearGradient(
            colors: [Colors.indigoAccent, Colors.lightBlueAccent]
        ),
      ),
      body: ListView(
        children: [

          Container(
            height: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.orange, Colors.pink]
                )
            ),
            child: const Text("Linear Gradient"),
          ),

          const Divider(),

          Container(
            height: 200,
            decoration: const BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                ),],
                shape: BoxShape.circle,
                gradient: RadialGradient(
                    colors: [Colors.indigoAccent, Colors.lightBlueAccent])
            ),
            child: const Text("Radial Gradient"),
          ),

          const Divider(),

          Container(
            height: 200,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: SweepGradient(
                  startAngle: pi/6,
                  endAngle: pi*1.8,
                  colors: [Colors.indigoAccent, Colors.blue,Colors.lightBlueAccent]
                )
            ),
            child: const Text("Sweep Gradient"),
          ),


        ],
      ),
    );
  }
}
