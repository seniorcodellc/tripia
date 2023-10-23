import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okay/screen3.dart';
import 'package:okay/text_field.dart';
import 'package:page_transition/page_transition.dart';

import 'dimensions.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/maps.png'),
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
                   SizedBox(width: context.width*0.045,),
                   Container(
                    width: context.width*0.91, // Adjust the width as needed
                    height: context.height*0.51, // Adjust the height as needed
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20*1.4), // Adjust the radius for the desired circular shape
          ),
                   ),
                 ],
               ),
             ],
           ),
            Column(
              children: [
                SizedBox(height: context.height*0.4,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.65,),
                    InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 530),
                              child: Screen3()));
                        },
                        child: Text('مكان الالتقاء',style: TextStyle(color: Colors.red,fontSize: Dimensions.font16*1.1),)),
                    SizedBox(width: context.width*0.015,),
                    Image.asset('assets/point2.png'),
                  ],
                ),
                SizedBox(height: context.height*0.01,),
                MyTextField2(hintText: '72 عباد الرحمن،شارع احمد ماهر', obsecureText: true,suffixicon: Icon(Icons.location_on),),
                Row(
                  children: [
                    SizedBox(width: context.width*0.74,),
                    Text('الوجهة',style: TextStyle(color: Colors.yellow,fontSize: Dimensions.font16*1.1),),
                    SizedBox(width: context.width*0.015,),
                    Image.asset('assets/point3.png'),
                  ],
                ),
                MyTextField4(hintText: 'اختار المكان الي عاوز تروحله', obsecureText: true,suffixicon: Icon(Icons.location_on),),
                SizedBox(height: context.height*0.01,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.10,),
                    Container(
                        width:context.width*0.8,
                        height: context.height*0.036,
                        child: Image.asset('assets/line3.png')),
                  ],
                ),
                Container(
                  width: context.width*0.8,
                  height: context.height*0.12,
                  padding: EdgeInsets.only(right:context.width*0.036),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(
                      color: Colors.white,
                      width: context.width * 0.003,
                    ),
                    borderRadius: BorderRadius.circular(
                        Dimensions.radius20),
                  ),
                  child: TextFormField(
                    textDirection: TextDirection.rtl,
                    readOnly: false,
                    maxLines: 5,
                    cursorColor: Colors.grey,
                    // Adjust the number of lines as needed (e.g., 3 or 5)
                    decoration: InputDecoration(
                      hintTextDirection: TextDirection.rtl,
                      hintText: 'عندك أي ملاحظات تانية؟',
                      border: InputBorder.none, // Remove the default border
                    ),

                  ),
                ),
                SizedBox(height: context.height*0.016,),
                MyButton2(onTap: (){}, text: 'دور على العربية'),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.43,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.885,),
                    Container(
                        height: context.height*0.08,
                        child: Image.asset('assets/line2.png')),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.88,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.000000000000000000001,),
                    Container(
                        width: context.width*1,
                        child: Image.asset('assets/nav.png')),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
