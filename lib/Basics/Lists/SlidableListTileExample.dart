import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SlidableListTileExample extends StatefulWidget {
  const SlidableListTileExample({Key? key}) : super(key: key);

  @override
  State<SlidableListTileExample> createState() =>
      _SlidableListTileExampleState();
}

class _SlidableListTileExampleState extends State<SlidableListTileExample> {
  static final _kActionpaneTypes = <String, Widget>{
    "DrawerMotion": DrawerMotion(),
    "BehindMotion": BehindMotion(),
    "ScrollMotion": ScrollMotion(),
    "StretchMotion": StretchMotion(),
  };
  late List<Slidable> _items;

  @override
  void initState() {
    super.initState();

    final mainAction = [
      SlidableAction(
        onPressed: (_) => _showSnackBar("Archive"),
        label: "Archive",
        //foregroundColor: Colors.blue,
        icon: Icons.archive,
        padding: EdgeInsets.all(5),
        //spacing: 20,
        flex: 1,
        backgroundColor: Colors.indigo,
      ),
      SlidableAction(
        onPressed: (_) => _showSnackBar("Share"),
        label: "Share",
        //foregroundColor: Colors.indigo,
        icon: Icons.share,
        backgroundColor: Colors.blue,
        flex: 1,
        padding: EdgeInsets.all(5),
      ),
    ];

    final secondaryActions = [
      SlidableAction(
        onPressed: (_) => _showSnackBar("More"),
        label: "More",
        backgroundColor: Colors.black45,
        icon: Icons.more_horiz,
        padding: EdgeInsets.all(5),
        flex: 1,
      ),
      SlidableAction(
        onPressed: (_) => _showSnackBar("Delete"),
        label: "Delete",
        backgroundColor: Colors.red,
        icon: Icons.delete,
        flex: 1,
        padding: EdgeInsets.all(5),
      ),
    ];

    _items = [
      for (final entry in _kActionpaneTypes.entries)
        Slidable(
          key: ValueKey(entry.key),
          startActionPane: ActionPane(
            motion: entry.value,
            extentRatio: 0.3,
            children: mainAction,
          ),
          child: ListTile(
            leading: const Icon(Icons.swipe),
            title: Text("ListTile with ${entry.key}"),
            subtitle: const Text("Swipe left and right to see the actions"),
          ),
          endActionPane: ActionPane(
            motion: entry.value,
            extentRatio: 0.3,
            children: secondaryActions,
          ),
        ),
    ];

    final dismissal = DismissiblePane(
      //key: Key(_items.),
      onDismissed: () {
        _showSnackBar("Dismiss Archive");
        setState(() {
          Fluttertoast.showToast(msg: "Length: ${_items.length} ");
          _items.removeAt(_items.length - 1);
        });
      },
      confirmDismiss: () async {
        final bool? ret = await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Archive"),
              content: const Text("Confirm action?"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("Cancel")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text("Confirm")),
              ],
            );
          },
        );
        return ret ?? false;
      },
    );

    _items.add(
      Slidable(
        key: const Key("dismissibleTile"),
        child: const ListTile(
          leading: Icon(Icons.swap_horiz),
          title: Text("Dismissible Tile"),
          subtitle: Text('Swipe right to archieve, Swip left to delete'),
        ),
        startActionPane: ActionPane(
          motion: DrawerMotion(),
          dismissible: dismissal,
          children: [mainAction[0]],
        ),
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [secondaryActions[1]],
        ),
      ),
    );
  } //init state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SlidableListView Example"),
      ),
      body: ListView(children: _items),
    );
  }

  void _showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}
