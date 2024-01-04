import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripia_user/core/utils/app-color.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tripia_user/features/comman/onBoardingScreens/presentation/pages/onboarding_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(context,
          PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 700), child: OnBoarding1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset('assets/svg/splash.svg'), // Adjust the path to your image
      ),
    );
  }
}
