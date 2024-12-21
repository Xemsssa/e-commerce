import 'package:flutter/material.dart';

class headingBigTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const headingBigTextWidget({
    super.key, required this.text, required this.color, required this.fontSize,

  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color
      ),
    );
  }
}
