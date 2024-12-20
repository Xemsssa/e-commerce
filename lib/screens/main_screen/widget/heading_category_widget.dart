import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HeadingCategoryWidget extends StatelessWidget {
  final String text;
  final String routeName;

  const HeadingCategoryWidget({
    super.key, required this.text, required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(
              fontWeight: FontWeight.bold,
            color: AppColors.white
          ),),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, routeName);
            },
            child: Text('See All', style: TextStyle(
              color: AppColors.white
            ),),
          ),
        ],
      ),
    );
  }
}
