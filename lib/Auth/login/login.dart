import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimony/Auth/signup/register.dart';
import 'package:matrimony/Auth/signup/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 18.0,
            letterSpacing: 1,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  ' El Shaddai',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email/Shaddai Id',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                //forgot password screen
              },
              textColor: Colors.blue,
              child: Text('Forgot Password'),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Does not have account?'),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ),
                      );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
