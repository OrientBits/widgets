import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  String? _name;
  String? _phoneNumber;
  String? _emailAddress;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TextFormField"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 24),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.person),
                    hintText: "What do people call you?",
                    labelText: "Name *"),
                onSaved: (String? value) {
                  _name = value;
                  debugPrint("name=$_name");
                },
              ),
              const SizedBox(height: 24),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.phone),
                    hintText: "Where can we reach you?",
                    labelText: "Phone Number *",
                    prefixText: "+91"),
                onSaved: (String? value) {
                  _phoneNumber = value;
                  debugPrint("name=$_phoneNumber");
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 24),
              TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.email),
                    hintText: "your email address",
                    labelText: "E-Mail",
                  ),
                  onSaved: (String? value) {
                    _emailAddress = value;
                    debugPrint("name=$_emailAddress");
                  }),
              const SizedBox(height: 24),
              TextFormField(
                maxLines: 3,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Tell us about yourself",
                    helperText: "Keep it short, this is just a demo",
                    labelText: "Life Story"),
              ),
              const SizedBox(height: 24),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Salary",
                    prefixText: "\$",
                    suffixText: "USD",
                    suffixStyle: TextStyle(color: Colors.green)),
              ),
              const SizedBox(height: 24),
              PasswordField(
                  fieldKey: _passwordFieldKey,
                  labelText: "Password",
                  helperText: "No more than 8 characters",

                  onFieldSummited: (String value) {
                    setState(() {
                      _password = value;
                    });
                  },
                  ),

              const SizedBox(height: 24),

              TextFormField(
                enabled: _password != null && _password!.isNotEmpty,
                obscureText: true,
                maxLength: 8,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: "Re-Type Password"
                ),
              )
            ],
          ),
        ));
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField(
      {Key? key,
      @required this.fieldKey,
      @required this.labelText,
      @required this.helperText,
      @required this.onSaved,
      @required this.validator,
      @required this.onFieldSummited,
      @required this.hintText})
      : super(key: key);

  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSummited;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSummited,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        hintText: widget.hintText,
        helperText: widget.helperText,
        suffixIcon: GestureDetector(
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}
