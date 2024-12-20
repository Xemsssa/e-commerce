import 'package:e_commerce_app/core/config/assets/app_images.dart';
import 'package:e_commerce_app/core/config/theme/app_colors.dart';
import 'package:e_commerce_app/screens/auth/pages/sign_in.dart';
import 'package:e_commerce_app/screens/homepage/home_page_screen.dart';
import 'package:e_commerce_app/screens/splash/bloc/splash.cubit.dart';
import 'package:e_commerce_app/screens/splash/bloc/splash.state.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return
    // BlocListener<SplashCubit, SplashState>(
    //   listener: (context, state) {
    //     if(state is UnAuthenticaded) {
    //       Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (context) => SignIn())
    //       );
    //     }
    //   },
    //   child:
    Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Image.asset(AppImages.logo)
          ),
      // ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));

    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const HomePageScreen()));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));

  }
}
