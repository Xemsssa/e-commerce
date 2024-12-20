import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final Map<String, dynamic> item;
  const CategoryItem({
    super.key, required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/${item['image']}')
                ),
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),
            Text(item['category'], style: TextStyle(
                color: AppColors.white
            ),)
          ],
        ),
      ),
    );
  }
}

