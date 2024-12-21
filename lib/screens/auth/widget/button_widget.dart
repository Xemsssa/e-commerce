import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color backGr;
  const ButtonWidget({
    super.key, required this.text, required this.fontSize, required this.backGr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backGr
      ),
      child: Center(child: Text(text, style: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: fontSize
      ),)),
    );
  }
}



