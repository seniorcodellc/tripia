import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okay/dimensions.dart';
import 'package:okay/screen4.dart';
import 'package:okay/text_field.dart';
import 'package:page_transition/page_transition.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), // Adjust the opacity to control the darkness
                  BlendMode.darken,
                ),
                child: Image.asset('assets/maps.png')),
            Column(
              children: [
                SizedBox(height: context.height*0.11,),
                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: context.width*0.22,),
                        Image.asset('assets/rectangle.png'),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.26,),
                        Column(
                          children: [
                            SizedBox(height: context.height*0.004,),
                            Text('احمد ماهر',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: context.width*0.32,),
                    Image.asset('assets/line.png'),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.17,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.275,),
                    Image.asset('assets/point.png'),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.37,),
                Row(
                  children: [
                    Container(
                      width: context.width*0.998,
                      height: context.height*0.65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: context.height*0.025,),
                          Image.asset('assets/grey.png'),
                          SizedBox(height: context.height*0.01,),
                          Text('مكان الالتقاء',style: TextStyle(fontWeight: FontWeight.w500,fontSize: Dimensions.font26/1.1),),
                          MyTextField6(hintText: 'عاوز نتقابل فين', obsecureText: true,suffixicon: Icon(CupertinoIcons.search),),
                          SizedBox(height: context.height*0.015,),
                          Row(
                            children: [
                              SizedBox(width: context.width*0.54,),
                              Text('عرض على الخريطة',style: TextStyle(color: Colors.red,fontSize: Dimensions.font20/1.1),),
                              Image.asset('assets/location.png'),
                            ],
                          ),
                          SizedBox(height: context.height*0.1,),
                          InkWell(
                              onTap: (){
                                Navigator.pushReplacement(context, PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 550),
                                    child: Screen4()));
                              },
                              child: Text('لم يتم العثور على نتائج',style: TextStyle(fontSize: Dimensions.font20,color: Colors.grey),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
