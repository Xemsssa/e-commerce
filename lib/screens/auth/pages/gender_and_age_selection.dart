import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:e_commerce_app/screens/auth/widget/basic_button_widget.dart';
import 'package:e_commerce_app/screens/auth/widget/heading_big_text_widget.dart';
import 'package:flutter/material.dart';

import '../widget/button_widget.dart';

class GenderAndAgeSelection extends StatelessWidget {
  const GenderAndAgeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.background,
      appBar: AppBar(),
      body:
      // MultiBlocProvider(
      //   providers: [
      //     BlocProvider(create: (context) => GenderSelectionCubit()),
      //     BlocProvider(create: (context) => AgeSelectCubit),
      //   ],
      //   child:
        const Column(
          children:[
            headingBigTextWidget(text: 'Tell us About yourself', color: AppColors.white, fontSize: 22,),
            Text("Who do you shop for?"),

            Row(
              children: [
                ButtonWidget(text: 'Men', fontSize: 16, backGr: AppColors.primary,),
                ButtonWidget(text: 'Woman', fontSize: 16, backGr: AppColors.secondaryBack,),
                // BasicButtonWidget(text: 'Men', onPressed: () { }, ),
                // BasicButtonWidget(text: 'Woman', onPressed: () { }, ),
              ],
            ),
            Text("How old are you?"),
          ],
        )
      // ),
    );
  }
}