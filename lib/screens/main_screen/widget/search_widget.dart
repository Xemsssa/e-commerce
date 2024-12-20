import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.secondaryBack,
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              // labelText: "Search",
              // fillColor: Colors.amber,
              prefixIconColor: AppColors.primary,
              prefixIcon: Icon(Icons.search),
              // border: OutlineInputBorder()
            ),
          )),
    );
  }
}

