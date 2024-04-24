// ignore: must_be_immutable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class smallButton extends StatelessWidget {
  Color? boxColor;
  Color? txtColor;
  double radius;
  double? height;
  double? width;
  String content;
  double fntSize;
  smallButton({
    super.key,
    this.txtColor,
    this.boxColor,
    required this.radius,
    this.height,
    this.width,
    required this.content,
    required this.fntSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      onTap: () {
        // Handle onTap
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: boxColor,
        ),
        child: Center(
          child: Text(
            content,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: fntSize,
              color: txtColor,
            ),
          ),
        ),
      ),
    );
  }
}
