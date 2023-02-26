// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ReuseButton extends StatelessWidget {
  String? text;
  double? width;
  ReuseButton({this.text, this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: 45,
        decoration: BoxDecoration(
            color: Color(0xFF0DA54B), borderRadius: BorderRadius.circular(10)),
        child: Text(
          text ?? '',
          style:
              TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
