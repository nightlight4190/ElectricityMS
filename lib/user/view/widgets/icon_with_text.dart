import 'package:flutter/material.dart';
import 'package:intern_project/util/colors.dart';

class IconWithText extends StatefulWidget {
  final IconData icon;
  final String text;

  const IconWithText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  _IconWithTextState createState() => _IconWithTextState();
}

class _IconWithTextState extends State<IconWithText> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _clicked = !_clicked; // Toggle clicked state
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: _clicked
                ? blueGrotto
                : Colors.black, // Change color based on clicked state
          ), // Icon
          SizedBox(width: 10), // Add some space between icon and text
          Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: _clicked
                  ? blueGrotto
                  : Colors.black, // Change color based on clicked state
            ),
          ), // Icon Name
        ],
      ),
    );
  }
}
