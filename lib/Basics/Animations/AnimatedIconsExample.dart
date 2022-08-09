import 'package:flutter/material.dart';

class AnimatedIconsExample extends StatefulWidget {
  const AnimatedIconsExample({Key? key}) : super(key: key);

  @override
  State<AnimatedIconsExample> createState() => _AnimatedIconsExampleState();
}

class _AnimatedIconsExampleState extends State<AnimatedIconsExample> {
  final _kAllAnimatedIcons = <String, AnimatedIconData>{
    "add_event":AnimatedIcons.add_event,
    "arrow_menu":AnimatedIcons.arrow_menu,
    "close_menu":AnimatedIcons.close_menu,
    "ellipsis_Search":AnimatedIcons.ellipsis_search,
    "event_add":AnimatedIcons.event_add,
    "home_menu":AnimatedIcons.home_menu,
    "menu_arrow":AnimatedIcons.menu_arrow,
    "menu_close":AnimatedIcons.menu_close,
    "menu_home":AnimatedIcons.menu_home,
    "pause_play":AnimatedIcons.pause_play,
    "play_pause":AnimatedIcons.play_pause,
    "search_ellipsis":AnimatedIcons.search_ellipsis,
    "view_list":AnimatedIcons.view_list,

}; // Is a HashMap

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Icons"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text("Click on the icon to forward/reverse the animation"),
            const Divider(),
            Wrap(
              spacing: 10,
              children: [

                for(final kv in _kAllAnimatedIcons.entries)
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: _AnimIconDemoBox(name: kv.key,iconData: kv.value),
                  ),

              ],
            )
          ],
        ),
      ),
    );
  }
}




class _AnimIconDemoBox extends StatefulWidget {
  final AnimatedIconData iconData;
  final String name;
  const _AnimIconDemoBox({Key? key,required this.iconData,required this.name}) : super(key: key);

  @override
  State<_AnimIconDemoBox> createState() => _AnimIconDemoBoxState();
}

class _AnimIconDemoBoxState extends State<_AnimIconDemoBox> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize : MainAxisSize.min,
      children: [
        InkWell(
          onTap: (){
            if(_animationController.isCompleted){
              _animationController.reverse();
            }else{
              _animationController.forward();
            }
          },
          child: AnimatedIcon(
            progress: _animationController,
            icon: widget.iconData,
            size: 128,
          ),
        ),
        Text(widget.name),
      ],
    );
  }
}

