import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // list of items
  final items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Container(
        decoration: BoxDecoration(),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            iconSize: 32,
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
            items: items.map(buildmenuItem).toList(),
            onChanged: (value) => setState(() => this.value = value),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildmenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );
}
