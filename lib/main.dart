import 'package:e_commerce_app/screens/all_acategory/all_category.dart';
import 'package:e_commerce_app/screens/auth/pages/enter_password.dart';
import 'package:e_commerce_app/screens/auth/pages/reset_password.dart';
import 'package:e_commerce_app/screens/auth/pages/return_to_login.dart';
import 'package:e_commerce_app/screens/auth/pages/sign_in.dart';
import 'package:e_commerce_app/screens/category_item_screen/category_item_screen.dart';
import 'package:e_commerce_app/screens/homepage/home_page_screen.dart';
import 'package:e_commerce_app/screens/main_screen/main_screen.dart';
import 'package:e_commerce_app/screens/notification/notification_screen.dart';
import 'package:e_commerce_app/screens/orders_screen/orders_screen.dart';
import 'package:e_commerce_app/screens/product_screen/product_screen.dart';
import 'package:e_commerce_app/screens/profile_screen/profile_screen.dart';
import 'package:e_commerce_app/screens/splash/bloc/splash.cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/config/routes/app_routes.dart';
import 'firebase_options.dart';
import 'screens/auth/pages/create_account_screen.dart';
import 'screens/orders_screen/order_screen.dart';
import 'screens/splash/screen/splash.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      // BlocProvider(
      // create: (context) => SplashCubit()..appStarted(),
      // child:
      MaterialApp(
        title: 'Flutter e-commerce app',
        // home: const Splash(),
        // home: const ReturnToLogin(),
        home: HomePageScreen(),
      routes: {
          AppRoutes.mainScreen: (context) => const MainScreen(),
          AppRoutes.homeScreen: (context) => const HomePageScreen(),
          AppRoutes.signIn: (context) => const SignIn(),
          AppRoutes.createAccount: (context) => const CreateAccountScreen(),
          AppRoutes.enterPassword: (context) => const EnterPassword(),
          AppRoutes.resetPassword: (context) => const ResetPassword(),
          AppRoutes.returnToLogin: (context) => const ReturnToLogin(),
          AppRoutes.categoryItem: (context) => const CategoryItemScreen(),
          AppRoutes.allCategory: (context) => const AllCategory(),
          AppRoutes.productScreen: (context) => const ProductScreen(),
          AppRoutes.profileScreen: (context) => const ProfileScreen(),
          AppRoutes.notificationScreen: (context) => const NotificationScreen(),
          AppRoutes.ordersScreen: (context) => const OrdersScreen(),
          AppRoutes.orderScreen: (context) => const OrderScreen(orderNumber: null,)
      },
      // ),
    );
  }
}
