import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okay/screen2.dart';
import 'package:page_transition/page_transition.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

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
                          child: Screen2()));
                    },
                    child: Center(child: Container(
                      height: context.height*0.1,
                        child: Image.asset('assets/road.png',width: context.width*0.9,))),
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
                          Image.asset('assets/ellipse2.png'),
                          Positioned(
                              top: context.height*0.01,
                              right: context.width*0.022,
                              child: Image.asset('assets/ellipse1.png')),
                        ],
                      ),
                      SizedBox(width: context.width*0.27,),
                      Stack(
                        children: [
                          Image.asset('assets/ellipse2.png'),
                          Positioned(
                              top: context.height*0.01,
                              right: context.width*0.022,
                              child: Image.asset('assets/ellipse1.png')),
                        ],
                      ),
                      SizedBox(width: context.width*0.25,),
                      Stack(
                        children: [
                          Image.asset('assets/ellipse2.png'),
                          Positioned(
                              top: context.height*0.01,
                              right: context.width*0.022,
                              child: Image.asset('assets/ellipse3.png')),
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
