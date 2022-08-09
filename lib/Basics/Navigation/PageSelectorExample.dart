import 'package:flutter/material.dart';

class PageSelectorExample extends StatefulWidget {
  const PageSelectorExample({Key? key}) : super(key: key);

  @override
  State<PageSelectorExample> createState() => _PageSelectorExampleState();
}

class _PageSelectorExampleState extends State<PageSelectorExample> {
  static const kIcons = [
    Icon(Icons.flutter_dash,color: Colors.lightBlue,),
    Icon(Icons.home),
    Icon(Icons.android),
    Icon(Icons.alarm),
    Icon(Icons.face),
    Icon(Icons.language),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Selector"),
      ),
      body: DefaultTabController(
        length: kIcons.length,
        child: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  const TabPageSelector(),

                  Expanded(
                    child: IconTheme(
                      data: IconThemeData(
                          size: 200,
                          color: Theme.of(context).colorScheme.secondary),
                      child: const TabBarView(
                        children: kIcons,
                      ),
                    ),
                  ),


                  ElevatedButton(onPressed: (){
                    TabController controller = DefaultTabController.of(context)!;
                    if(!controller.indexIsChanging){
                      controller.animateTo(kIcons.length-1);
                    }
                  }, child: Text("Skip"))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
