import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:e_commerce_app/util/list.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Map<String, dynamic>  item;
  ItemWidget({
    super.key, required this.item,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(5),
      child:
      Column(
        children: [
          Container(
            height: 220,
            width: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/${item['image']}')
                )
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AppColors.secondaryBack
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Text(item.toString())
                Text(item['item'], style: TextStyle(
                    color: AppColors.white
                ),),
                Text("\$${item['price']}", style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
