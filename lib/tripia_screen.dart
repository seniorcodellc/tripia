import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:okay/text_field.dart';
import 'package:page_transition/page_transition.dart';
import 'dimensions.dart';
import 'login.dart';

//////////////////////////////////////////////////////////////Splash Screen 1 \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class Splash1 extends StatelessWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.height*0.055,),
            Row(
              children: [
                SizedBox(width: 26,),
                Text('تخطي',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  color: Colors.red
                ),
                ),
              ],
            ),
            SizedBox(height: context.height*0.03,),
            Stack(
             children: [
               Row(
                 children: [
                   SizedBox(width: context.width*0.1,),
                   Image.asset(
                       'assets/Vector.png',
                        width: context.width*0.9,
                        height: context.height*0.5,
                   ),
                 ],
               ),
               Column(
                 children: [
                   SizedBox(height: context.height*0.15,),
                   Row(
                     children: [
                       SizedBox(width: context.width*0.05,),
                       Image.asset(
                           'assets/car-motorly-gpl25lmBBd.png',
                            width: context.width*0.88,
                       ),
                     ],
                   ),
                 ],
               ),
             ],
            ),
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: context.width*0.685,),
                    Column(
                      children: [
                        SizedBox(height: context.height*0.0365,),
                        Container(
                          width: context.width*0.28, // Set the width of the rectangle
                          height: context.height*0.01, // Set the height of the rectangle
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade200, // Set the background color
                            //border: Border.all(color: Colors.redAccent, width: 2.0), // Optional border
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: context.width*0.45,),
                    Text(
                        'مع تريبيا انت القائد',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.height*0.01,),
            Row(
          children: [
            SizedBox(width: context.width*0.49,),
            Text(
              'استمتع بكل المزايا',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
          ],
        ),
            Row(
              children: [
                SizedBox(width: context.width*0.575,),
                Text(
                  'العربية براحتك',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            SplashButton(onTap: (){
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600),
                  child: Splash2()));
            }),
            SizedBox(height: context.height*0.02,),
          ],
        ),
      ),
    );
  }
}
//////////////////////////////////////////////////////////////Splash Screen 2 \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.height*0.055,),
            Row(
              children: [
                SizedBox(width: 26,),
                Text('تخطي',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.red
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: context.width*0.696,),
                    Column(
                      children: [
                        SizedBox(height: context.height*0.037,),
                        Container(
                          width: context.width*0.23, // Set the width of the rectangle
                          height: context.height*0.01, // Set the height of the rectangle
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade200, // Set the background color
                            //border: Border.all(color: Colors.redAccent, width: 2.0), // Optional border
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: context.width*0.35,),
                    Text(
                      'افضل سعر,اسرع وقت',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.height*0.01,),
            Row(
              children: [
                SizedBox(width: context.width*0.52,),
                Text(
                  'هنوصلك فالوقت',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: context.width*0.54,),
                Text(
                  'المناسب بأفضل',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: context.width*0.82,),
                Text(
                  'سعر',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: context.width*0.05,),
                    Image.asset(
                      'assets/Vector.png',
                      width: context.width*0.95,
                      height: context.height*0.45,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: context.width*0.05,),
                        Image.asset(
                          'assets/Group.png',
                          width: context.width*0.91,
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: Duration(milliseconds: 600),
                        child: Splash3()));
                  },
                  child: Column(
                    children: [
                      SizedBox(height: context.height*0.48,),
                      Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: context.width*0.13,),
                              Container(
                                width: context.width*0.37, // Set the desired width and height
                                height: context.height*0.124,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.red, // Border color
                                    width: 3.0, // Border thickness
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: context.height*0.013,
                            right: context.width*0.586,
                            child: Row(
                              children: [
                                SizedBox(width: context.width*0.2,),
                                Container(
                                  width: context.width*0.2, // Set the desired width and height
                                  height: context.height*0.098,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward, // Replace with the desired icon
                                      color: Colors.white, // Change the icon color
                                      size: 30, // Change the icon size
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: context.height*0.02,),
          ],
        ),
      ),
    );
  }
}
//////////////////////////////////////////////////////////////Splash Screen 2 \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class Splash3 extends StatelessWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerHeight=context.height*0.01;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.height*0.055,),
            Row(
              children: [
                SizedBox(width: 26,),
                Text('تخطي',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.red
                  ),
                ),
              ],
            ),
            SizedBox(height: context.height*0.03,),
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: context.width*0.1,),
                    Image.asset(
                      'assets/Vector.png',
                      width: context.width*0.9,
                      height: context.height*0.5,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: context.height*0.15,),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.05,),
                        Image.asset(
                          'assets/tripia.png',
                          width: context.width*0.88,
                          height: context.height*0.25,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: context.width*0.677,),
                    Column(
                      children: [
                        SizedBox(height: context.height*0.0365,),
                        Container(
                          width: context.width*0.28, // Set the width of the rectangle
                          height: containerHeight, // Set the height of the rectangle
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade200, // Set the background color
                            //border: Border.all(color: Colors.redAccent, width: 2.0), // Optional border
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: context.width*0.45,),
                    Text(
                      'استعد لرحلتك معانا',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.height*0.01,),
            Row(
              children: [
                SizedBox(width: context.width*0.54,),
                Text(
                  'اختار انت المكان',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: context.width*0.49,),
                Text(
                  'وسيب الباقي علينا',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            SplashButton(onTap: (){
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600),
                  child: LoginScreennn()));
            }),
            SizedBox(height: context.height*0.02,),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////Login Screen \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

