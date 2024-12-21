import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BasicButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double ? height;
  const BasicButtonWidget({super.key, required this.text, required this.onPressed, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          minimumSize: Size.fromHeight(height ?? 50)
        ),
        child: Text(text,
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold
          ),
        ));
  }
}
