import 'package:e_commerce_app/core/config/routes/app_routes.dart';
import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:e_commerce_app/screens/auth/widget/basic_button_widget.dart';
import 'package:e_commerce_app/screens/auth/widget/button_widget.dart';
import 'package:e_commerce_app/screens/auth/widget/heading_big_text_widget.dart';
import 'package:e_commerce_app/screens/auth/widget/text_field_widget.dart';
import 'package:flutter/material.dart';

class EnterPassword extends StatelessWidget {
  const EnterPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 60,),
            headingBigTextWidget(text: 'Sign in',fontSize: 32, color: AppColors.white,),
            SizedBox(height: 20,),
            TextFieldWidget(hintText: "Password",),
            SizedBox(height: 20,),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.homeScreen);
                },
                child: ButtonWidget(text: 'Continue', fontSize: 14, backGr: AppColors.primary,)),
            SizedBox(height: 20,),
            // BasicButtonWidget(text: 'Continue', onPressed: () { }, ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Forgot Password ? ',style: TextStyle(
                    color: AppColors.white
                ),),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.resetPassword);
                  },
                  child: Text('Reset',style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold
                  ), ),
                )
              ],
            ),
          ],
        ),
      ),
      ),

    );
  }
}
