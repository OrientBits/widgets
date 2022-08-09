import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LowLevelAnimationExample extends StatefulWidget {
  const LowLevelAnimationExample({Key? key}) : super(key: key);

  @override
  State<LowLevelAnimationExample> createState() =>
      _LowLevelAnimationExampleState();
}

class _LowLevelAnimationExampleState extends State<LowLevelAnimationExample>
    with SingleTickerProviderStateMixin {

  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  late CurvedAnimation _curvedAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    _curvedAnimation = CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _sizeAnimation = Tween<double>(begin: 200, end: 210).animate(_curvedAnimation);
    _colorAnimation = ColorTween(begin: Colors.grey.shade200, end: Colors.grey.shade200).animate(_curvedAnimation);

    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    Fluttertoast.showToast(msg: "Disposed!");
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LowLevelAnimation Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: _sizeAnimation.value,
                width: _sizeAnimation.value,
                child: const FlutterLogo(),
                decoration: BoxDecoration(
                    color: _colorAnimation.value,
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
              ),
              onTap: (){
                setState(() {
                  _animationController.reverse();
                });
              },
            ),
            ElevatedButton(onPressed: (){
              _animationController.forward();
            }, child: const Text("Zoom in")),

            ElevatedButton(onPressed: (){
              _animationController.reverse();
            }, child: const Text("Zoom Out")),

            ElevatedButton(
              onPressed: () {
                _animationController.addStatusListener((status) {
                  if (status == AnimationStatus.completed) {
                    _animationController.reverse();
                  } else if (status == AnimationStatus.dismissed) {
                    _animationController.forward();
                  }
                });
                _animationController.forward();
              },
              child: const Text('Loop animation'),
            ),

            ElevatedButton(onPressed: (){
              setState(() {
                _animationController.stop();
              });
            }, child: const Text("Stop"))
          ],
        ),
      ),
    );
  }
}
