// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

import 'register.dart';
import 'login.dart';

class MainScreenLR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: Color(0xFF0DA54B),
          ),
          Expanded(
            child: Container(
              child: ContainedTabBarView(
                tabBarProperties: TabBarProperties(
                  background: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0xFFD9D9D9), width: 2)),
                      color: Colors.white,
                    ),
                  ),
                  position: TabBarPosition.top,
                  alignment: TabBarAlignment.end,
                  indicatorColor: Color(0xFF0DA54B),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.green,
                ),
                tabs: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
                views: [
                  Login(),
                  Register(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
