import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomAppBarWithFAB extends StatefulWidget {
  const BottomAppBarWithFAB({Key? key}) : super(key: key);

  @override
  State<BottomAppBarWithFAB> createState() => _BottomAppBarWithFABState();
}

class _BottomAppBarWithFABState extends State<BottomAppBarWithFAB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        mini: false,
        onPressed: () =>
            Fluttertoast.showToast(msg: "Dummy floating action button"),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomAppBar(context),
      body: Container(
        color: Colors.grey.shade100,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
              child: Card(
                color: Colors.white,
                elevation: 0,
                child: ListTile(
                  title: Text("Rohit Rana"),
                  subtitle: Text("Hello Rohit How's going..."),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.person),
                  ),
                  trailing: Text("12:47 pm",style: TextStyle(fontSize: 12),),
                ),
              ),
            );
          },
          itemCount: 50,
        ),
      ),
    );
  }

  BottomAppBar _buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        alignment: Alignment.center,
                        height: 200,
                        color: Colors.indigo,
                        child: const Text(
                          "Dummy Bottom sheet",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    });
              },
              icon: const Icon(Icons.menu)),
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "Dummy Search action");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "Dummy menu action");
              },
              icon: const Icon(Icons.more_horiz)),
        ],
      ),
    );
  }
}
