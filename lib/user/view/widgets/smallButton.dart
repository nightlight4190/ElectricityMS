// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:intern_project/util/colors.dart';

// ignore: must_be_immutable
class smallButton extends StatelessWidget {
  double? height;
  double? width;
  String btnName;
  smallButton({
    super.key,
    this.width,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: navyBlue,
      ),
      child: Center(
        child: Text(
          btnName,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: babyBlue,
          ),
        ),
      ),
    );
  }
}
