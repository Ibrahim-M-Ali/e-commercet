// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ReuseButtonIcon extends StatelessWidget {
  Text? buttonText;
  Icon? icon;
  Color? color;
  double? width;
  void Function()? onTap;

  ReuseButtonIcon(
      {this.onTap,
      this.buttonText,
      this.icon,
      this.color,
      this.width = double.infinity});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFD9D9D9)),
            color: color,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            if (icon != null) icon!,
            SizedBox(
              width: 10,
            ),
            buttonText!
          ],
        ),
      ),
    );
  }
}
