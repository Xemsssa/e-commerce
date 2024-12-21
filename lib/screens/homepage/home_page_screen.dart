import 'package:e_commerce_app/core/config/assets/app_images.dart';
import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:e_commerce_app/screens/main_screen/main_screen.dart';
import 'package:e_commerce_app/screens/notification/notification_screen.dart';
import 'package:e_commerce_app/screens/orders_screen/orders_screen.dart';
import 'package:e_commerce_app/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int selectedIndex = 0;

  void onSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<dynamic> list = [
    MainScreen(),
    // Container(child: Center(child: Text("message")),),
    // Container(child: Center(child: Text("check")),)\
    NotificationScreen(),
    OrdersScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: AppColors.background,
      body:list[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.background,
        onTap: onSelectedIndex,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondaryBack,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(icon: Image.asset(AppImages.vector, color: AppColors.primary,),
          label: "home", activeIcon: Image.asset(AppImages.vector,color: AppColors.primary,)),
          BottomNavigationBarItem(icon: Image.asset(AppImages.vectorMessage),
          label: "message", activeIcon: Image.asset(AppImages.vectorMessage, color: AppColors.primary,)),
          BottomNavigationBarItem(icon: Image.asset(AppImages.vectorCheck),
          label: "check",activeIcon: Image.asset(AppImages.vectorCheck, color: AppColors.primary,)),
          BottomNavigationBarItem(icon: Image.asset(AppImages.vectorProfile),
          label: "profile",activeIcon: Image.asset(AppImages.vectorProfile,  color: AppColors.primary,)),
        ],
      ),
    );
  }
}
