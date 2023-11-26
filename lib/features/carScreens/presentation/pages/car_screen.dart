import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../core/utils/app-assets.dart';
import '../../../booking_screens/presentation/pages/booking_screen_1.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  State<CarScreen> createState() => _Screen1State();
}

class _Screen1State extends State<CarScreen> {
  @override
  void initState() {
    super.initState();

    // Delay for 6 seconds and then navigate to the main screen
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, PageTransition(
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 700),
          child: const BookingScreen1()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: context.height*0.2,),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 600),
                          child: BookingScreen1()));
                    },
                    child: Center(child: Container(
                      height: context.height*0.1,
                        child: SvgPicture.asset(AppAssets.car,width: context.width*0.9,))),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: context.height*0.278,),
                  Row(
                    children: [
                      SizedBox(width: context.width*0.1,),
                      Stack(
                        children: [
                          Image.asset(AppAssets.ellipsePng),
                          Positioned(
                              top: context.height*0.01,
                              right: context.width*0.022,
                              child: SvgPicture.asset(AppAssets.greyPoint)),
                        ],
                      ),
                      SizedBox(width: context.width*0.27,),
                      Stack(
                        children: [
                          Image.asset(AppAssets.ellipsePng),
                          Positioned(
                              top: context.height*0.01,
                              right: context.width*0.022,
                              child: SvgPicture.asset(AppAssets.greyPoint)),
                        ],
                      ),
                      SizedBox(width: context.width*0.25,),
                      Stack(
                        children: [
                          Image.asset(AppAssets.ellipsePng,),
                          Positioned(
                              top: context.height*0.01,
                              right: context.width*0.022,
                              child: SvgPicture.asset(AppAssets.redPoint)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
