import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimony/Auth/login/login.dart';
import 'package:matrimony/home/home.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
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
                  'Sign up here',
                  style: TextStyle(fontSize: 20),
                )),

            // first name
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Flexible(
                    child: TextField(
                      controller: nameController,
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'First Name',
                      ),
                    ),
                  ),
                ),

                // second name
                Container(
                  padding: EdgeInsets.all(10),
                  child: Flexible(
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Second Name',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Gender',
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
                  labelText: 'Mother Tongue',
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
                  labelText: 'Profile created by',
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
                  labelText: 'Date of Birth',
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
                  labelText: 'Your Religion',
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
                  child: Text('Register'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                )),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Already have an account?'),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Login(),
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
