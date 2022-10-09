import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceExample extends StatefulWidget {
  const SharedPreferenceExample({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceExample> createState() => _SharedPreferenceExampleState();
}

class _SharedPreferenceExampleState extends State<SharedPreferenceExample> {
  SharedPreferences? _preferences;
  static const String kDemoNumberPrefKey = "demo_number_pref";
  static const String kDemoBooleanPrefKey = "demo_boolean_pref";
  int _numberPref = 0;
  bool _boolPref = false;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value){
      setState(() {
        _preferences = value;
        _loadNumberPref();
        _loadBooleanPref();
      });
      print("initii:: $_numberPref");
      print("initii:: $_boolPref");
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preference example"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
           TableRow(
             children: [
               const Text("Number \nPreference: "),
               Text("$_numberPref"),
               ElevatedButton(onPressed: (){
                 _setNumberPref(_numberPref+1);
               }, child: const Text("Increment"))
             ]
           ),

            TableRow(
                children: [
                  const Text("Boolean Preference: "),
                  Text("$_boolPref"),
                  ElevatedButton(onPressed: (){
                    _setBooleanPref(!_boolPref);
                  }, child: const Text("Toggle"))
                ]
            )
          ],
        ),
      ),
    );
  }

  void _loadNumberPref(){
    _numberPref = _preferences?.getInt(kDemoNumberPrefKey)??0;
  }

  void _loadBooleanPref(){
    _boolPref = _preferences?.getBool(kDemoBooleanPrefKey)??false;
  }

  Future<void> _setNumberPref(int val) async{
    await _preferences?.setInt(kDemoNumberPrefKey, val);
    setState(() {
      _loadNumberPref();
    });
  }

  Future<void> _setBooleanPref(bool val) async{
    await _preferences?.setBool(kDemoBooleanPrefKey,val);
    setState(() {
      _loadBooleanPref();
    });
  }


}
