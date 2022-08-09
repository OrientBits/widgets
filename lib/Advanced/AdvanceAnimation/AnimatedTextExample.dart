import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextExample extends StatefulWidget {
  const AnimatedTextExample({Key? key}) : super(key: key);

  @override
  State<AnimatedTextExample> createState() => _AnimatedTextExampleState();
}

class _AnimatedTextExampleState extends State<AnimatedTextExample> {
  static const _kTexts = ["Hi..", "OrientBits", "Do things","Quickly"];
  static const _kTextsStyle = TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.headline6;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedText Example"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Text("Text LiquidFill", style: titleTextStyle),
          TextLiquidFill(
            text: "ORIENTS",
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.blueGrey.shade100,
            textStyle:
                const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            boxHeight: 200,
          ),
          const Divider(),
          Text(
            "RotateAnimatedTextKit",
            style: titleTextStyle,
          ),
          SizedBox(
            height: 64,
            child: AnimatedTextKit(
              animatedTexts: [
                for (final txt in _kTexts)
                  RotateAnimatedText(txt, textStyle: _kTextsStyle),
              ],
              repeatForever: true,
            ),
          ),

          const Divider(),
          Text("TypeWriterAnimationTextKit",style: titleTextStyle),
          AnimatedTextKit(
              animatedTexts: [
                for(final txt in _kTexts)
                TypewriterAnimatedText(
                  txt,
                  textStyle: _kTextsStyle,
                  textAlign: TextAlign.start,
                  speed: const Duration(milliseconds: 120),
                )
              ],
            repeatForever: true,
          ),

          const Divider(),
          Text("FadeAnimatedTextKit",style: titleTextStyle),
          SizedBox(
            height: 64,
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  for(final txt in _kTexts)
                    FadeAnimatedText(txt,textStyle: _kTextsStyle)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
