// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'login.dart';
import '../../widgets/reuse-button-icon.dart';
import '../../widgets/reuse-button.dart';
import '../../widgets/reuse-tff.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool sec = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  child: ReuseButtonIcon(
                      buttonText: Text(""),
                      color: Color(0xFF0DA54B),
                      width: 270,
                      icon: Icon(
                        Icons.mail,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  child: ReuseButtonIcon(
                      buttonText: Text(""),
                      color: Color(0xFF0DA54B),
                      width: 80,
                      icon: Icon(
                        Icons.facebook,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: 100,
                    color: Color(0xFFD9D9D9),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'or Register with',
                    style: TextStyle(fontSize: 16, color: Color(0xFF0DA54B)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 2,
                    width: 100,
                    color: Color(0xFFD9D9D9),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "First Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReuseTFF(
                    hintText: "First Name",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Last Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReuseTFF(
                    hintText: "Last Name",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReuseTFF(hintText: "Enter your email"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReuseTFF(
                    hintText: "Enter your password",
                    obscureText: sec,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          sec = !sec;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 32,
                      ),
                      color: Color(0xFF0DA54B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 45,
                child: ReuseButtonIcon(
                  buttonText: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Color(0xFF0DA54B),
                  width: 150,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text("Sign In",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF0DA54B))))
              ],
            )
          ],
        ),
      ),
    );
  }
}
