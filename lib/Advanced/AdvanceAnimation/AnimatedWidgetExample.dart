import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({Key? key}) : super(key: key);

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample> with SingleTickerProviderStateMixin{
  late Animation<double> _sizeAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 500));
    _sizeAnimation = Tween<double>(begin: 100,end: 150).animate(_animationController);
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Widget"),),
      body: Center(
        child: Column(
          children: [
            _AnimatedLogo(listenable:_sizeAnimation),

            ElevatedButton(onPressed: (){
              _animationController.forward();
            }, child: const Text("Forward animation")),
            ElevatedButton(onPressed: (){
              _animationController.reverse();
            }, child: const Text("Reverse animation")),
          ],
        ),
      ),
    );
  }
}



class _AnimatedLogo extends AnimatedWidget {
  _AnimatedLogo({required Listenable listenable}) : super(listenable: listenable);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }
}