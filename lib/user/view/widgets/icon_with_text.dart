import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon), // Icon
        SizedBox(width: 10), // Add some space between icon and text
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ), // Icon Name
      ],
    );
  }
}
