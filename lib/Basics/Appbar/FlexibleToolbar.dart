import 'package:flutter/material.dart';

class FlexibleToolbar extends StatefulWidget {
  const FlexibleToolbar({Key? key}) : super(key: key);

  @override
  State<FlexibleToolbar> createState() => _FlexibleToolbarState();
}

class _FlexibleToolbarState extends State<FlexibleToolbar> {
  bool _pinned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("FlexibleSpace titile"),
              background: Image.asset("assets/flutter_1.png",fit: BoxFit.fill,),
            ),
          ),

          const SliverFillRemaining(
            child: Center(child: Text("Hello"),),
          )
        ],
      ),


      bottomNavigationBar: BottomAppBar(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text("Pinned"),
                Switch(
                  value: _pinned,
                  onChanged: (bool val) {
                    setState(() {
                      _pinned = val;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text("Pinned1"),
                Switch(
                  value: _pinned,
                  onChanged: (bool val) {
                    setState(() {
                      _pinned = val;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text("Pinned2"),
                Switch(
                  value: _pinned,
                  onChanged: (bool val) {
                    setState(() {
                      _pinned = val;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
