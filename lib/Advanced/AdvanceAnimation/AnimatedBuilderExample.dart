import 'package:flutter/material.dart';

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rotateAnimation =
        Tween<double>(begin: 0, end: 3.14/2).animate(_animationController);

    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedBuilder Example"),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedBuilder(
              animation: rotateAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: rotateAnimation.value,
                  child: child,
                );
              },
              child: const FlutterLogo(
                size: 72,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _animationController.forward();
              },
              child: const Text("Forward Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                _animationController.reverse();
              },
              child: const Text("Forward Animation"),
            ),

          ],
        ),
      ),
    );
  }
}
