// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF9F9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            child: Image.asset(
              "assets/images/home-bg.png",
              // fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'All your shopping in one App',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Sell your devices the smarter, faster way for immediate cash and a cleaner conscience. Sell your devices the smarter, faster way for immediate cash and a cleaner conscience.',
                  style: TextStyle(height: 1.5, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 160,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xFF0DA54B),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('mainscreenLR');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 160,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color(0xFF0DA54B),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
