import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatefulWidget {
  const ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderExample> createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Builder"),),
      body: ListView.builder(itemBuilder: (context,index){
        debugPrint("Index:::: $index");
        if(index.isOdd){
          debugPrint("Divider:::: $index");
          return const Divider();
        }else {
          final idx = index ~/ 2 + 1;
          debugPrint("BuildRow:::: $idx");
          return _buildRow(idx);
        }
      },
        itemCount: 40,),
    );
  }

  Widget _buildRow(int idx){
    return ListTile(
      leading: CircleAvatar(
        child: Text("$idx"),
      ),
      title: Text("Item $idx",style: const TextStyle(fontSize: 18),),
      trailing: const Icon(Icons.dashboard),
    );
  }
}
