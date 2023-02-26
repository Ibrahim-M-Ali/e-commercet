// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ReuseTFF extends StatelessWidget {
  String? hintText;
  bool? obscureText;
  Widget? suffixIcon;

  ReuseTFF({
    this.hintText,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20.0),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 15, color: Color(0xFFCACACA)),
          fillColor: Color(0xFFFFFFFF),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFFCECECE)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFFCECECE)),
          ),
        ),
      ),
    );
  }
}
