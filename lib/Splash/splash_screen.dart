import 'package:flutter/material.dart';
import 'package:matrimony/Auth/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // firebase Authentication
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              'Find your Perfect Partner',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              'Skip and Continue',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: CircleAvatar(
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
