import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TextField"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            const ListTile( title: Text("1. Number input filed"),),
            _buildNumberTextField(),

            const ListTile( title: Text("2. Multiline input field"),),
            _buildMultilineTextField(),

            const ListTile( title: Text("3. Password Input field"),),
            _buildPasswordTextField(),

            const ListTile( title: Text("4. Borderless input"),),
            _buildBorderlessTextField(),
          ],
        )
    );
  }

  bool _numberInputIsValid = true;
  Widget _buildNumberTextField(){
    return TextField(
      keyboardType: TextInputType.number,
      style: Theme.of(context).textTheme.headline5,
      decoration: InputDecoration(
        icon: const Icon(Icons.attach_money),
        labelText:"Enter an integer",
        errorText: _numberInputIsValid?null:"Please Enter an integer",
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        )
      ),
      onSubmitted: (val) => Fluttertoast.showToast(msg: "You entered: ${int.parse(val)}"),
      onChanged: (String val){
        final v = int.tryParse(val);
        debugPrint("Parsed value = $val");
        if(v == null){
          setState(() {
            _numberInputIsValid = false;
          });
        }else{
          setState(() {
            _numberInputIsValid = true;
          });
        }
      },
    );
  }

  final _controller = TextEditingController();
  Widget _buildMultilineTextField(){
    return TextField(
      controller:  _controller,
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: "${_counterWords(_controller.text)} worlds",
        labelText: "Enter Multiline text:",
        alignLabelWithHint: true,
        hintText: "Type Something...",
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),
      onChanged: (text)=>setState(() {}),
    );
  }
  int _counterWords( String text){
    final trimmedText = text.trim();
    if(trimmedText.isEmpty){
      return 0;
    }else{
      debugPrint("::: ${trimmedText.split(RegExp("\\s"))}");
      return trimmedText.split(RegExp("\\s+")).length;
    }
  }

  bool _showPassword = true;
  Widget _buildPasswordTextField(){
    return TextField(
      obscureText: _showPassword,
      decoration: InputDecoration(
        label: const Text("Password"),
        prefixIcon: IconButton(
          icon: Icon(Icons.remove_red_eye),
          color: _showPassword?Colors.grey:Colors.blue,
          onPressed: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
        )
      ),
    );
  }

 Widget _buildBorderlessTextField() {
    return TextField(
      maxLines: 3,
      decoration: InputDecoration.collapsed(hintText: "Borderless input..."),
    );
 }

}
