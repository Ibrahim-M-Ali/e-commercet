// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/widgets/reuse-button-icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'register.dart';
import '../../widgets/reuse-button.dart';
import '../../widgets/reuse-tff.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool sec = true;

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome back! Don’t have an account?",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16, color: Color(0xFF0DA54B)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ReuseTFF(
              hintText: "Username",
              obscureText: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ReuseTFF(
              hintText: "Password",
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
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ReuseButton(text: 'Log in'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.all(Color(0xFF0DA54B)),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0DA54B),
                  ),
                ),
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
                  width: 160,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'OR',
                  style: TextStyle(fontSize: 16, color: Color(0xFF0DA54B)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 2,
                  width: 160,
                  color: Color(0xFFD9D9D9),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ReuseButtonIcon(
              width: double.infinity,
              buttonText: Text("Log in with Google"),
              color: Color(0xFFFFFFFF),
              icon: Icon(
                Icons.mail,
                color: Colors.green,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ReuseButtonIcon(
                width: double.infinity,
                icon: Icon(
                  Icons.apple,
                  color: Color(0xFF0DA54B),
                ),
                color: Color(0xFFFFFFFF),
                buttonText: Text("Log in with Apple"),
              )),
        ],
      ),
    );
  }
}
