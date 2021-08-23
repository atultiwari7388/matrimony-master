import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "First Name",
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Second Name",
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Second Name",
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
