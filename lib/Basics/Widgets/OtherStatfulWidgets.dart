import 'package:flutter/material.dart';

class OtherStatefulWidgets extends StatefulWidget {
  const OtherStatefulWidgets({Key? key}) : super(key: key);

  @override
  State<OtherStatefulWidgets> createState() => _OtherStatefulWidgetsState();
}

class _OtherStatefulWidgetsState extends State<OtherStatefulWidgets> {
  bool _switchVal = true;
  bool _checkboxVal = false;
  double _slider1Val = 1;
  double _slider2Val = 50;
  int _radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Stateful Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Switch",
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  onChanged: (bool value) {
                    setState(() {
                      _switchVal = value;
                    });
                  },
                  value: _switchVal,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Disabled Switch",
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  onChanged: null,
                  value: false,
                )
              ],
            ),
            const Divider(thickness: 1),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "CheckBox",
                  style: TextStyle(fontSize: 18),
                ),
                Checkbox(
                    value: _checkboxVal,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          _checkboxVal = value;
                        });
                      }
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Disabled CheckBox",
                  style: TextStyle(fontSize: 18),
                ),
                Checkbox(
                  value: null,
                  onChanged: null,
                  tristate: true,
                )
              ],
            ),
            const Divider(thickness: 1),


            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Slider : Value -> ${_slider1Val.toInt()}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Slider(
                    onChanged: (double value) {
                      setState(() {
                        _slider1Val = value;
                      });
                    },
                    value: _slider1Val,
                    max: 100,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Slider with Divisions and Label -> ${_slider2Val.toInt()}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Slider(
                    onChanged: (double value) {
                      setState(() {
                        _slider2Val = value;
                      });
                    },
                    value: _slider2Val,
                    max: 100,
                    divisions: 10,
                    label: "$_slider2Val",
                  ),
                ],
              ),
            ),

            const Divider(thickness: 1),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Linear Progress Indicator",style: TextStyle(fontSize: 18),),
                  SizedBox(height: 10,),
                  LinearProgressIndicator(),
                ],
              ),
            ),

            const Divider(thickness: 1),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Circular Progress indicator",style: TextStyle(fontSize: 18),),
                  SizedBox(height: 10,),
                  Center(child: CircularProgressIndicator()),
                ],
              ),
            ),


            const Divider(thickness: 1),
            SizedBox(height: 10,),
            Text("Radio buttons $_radioVal",style: TextStyle(fontSize: 18),),
            Row(
              children: [0,1,2,3].map((int index) => Radio<int>(value: index, groupValue: _radioVal, onChanged: (int? val){
                if(val != null){
                  setState(() {
                    _radioVal = val;
                  });
                }
              }) ).toList(),
            )



          ],
        ),
      ),
    );
  }
}
