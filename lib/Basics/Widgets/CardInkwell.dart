import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardInkwell extends StatefulWidget {
  const CardInkwell({Key? key}) : super(key: key);

  @override
  State<CardInkwell> createState() => _CardInkwellState();
}

class _CardInkwellState extends State<CardInkwell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Inkwell")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              color: Colors.blue.shade400,
              elevation: 2,
              child: const SizedBox(
                height: 100,
                child: Center(
                    child: Text(
                  "Card: 1",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                )),
              ),
            ),
            Card(
              color: Colors.indigoAccent.shade200,
              elevation: 2,
              child: SizedBox(
                height: 100,
                child: InkWell(
                  //splashColor: Colors.green,
                  onTap: () {},
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Card: 2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20)),
                        Text("Card: 2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              elevation: 2,
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Image.asset("assets/flutterimg.jpg", fit: BoxFit.cover),
                  ),
                ),
                //splashColor: Colors.red,
              ),
            ),
            Card(
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.elliptical(20, 40))),
              child: SizedBox(
                height: 100,
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Card 3 with custom border",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ))
                  ],
                ),
              ),
            ),

            Card(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: Stack(
                      children: [
                        Positioned.fill(
                            child: Image.asset(
                          "assets/flutterimg.jpg",
                          fit: BoxFit.cover,
                        )),
                        Positioned.fill(
                            child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: const Center(
                                child:Text(
                              "Clickable Card with Image",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black),
                            )),
                            onTap: () {},
                          ),
                        )),

                      ],
                    ),
                  ),

                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        Fluttertoast.showToast(msg: "Sharing...");
                      }, child: const Text("SHARE")),
                      TextButton(onPressed: (){
                        Fluttertoast.showToast(msg: "Exploring...");
                      }, child: const Text("EXPLORE")),
                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
