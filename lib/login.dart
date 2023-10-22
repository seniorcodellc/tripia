import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:okay/signup.dart';
import 'package:okay/text_field.dart';
import 'package:page_transition/page_transition.dart';

import 'Screen1.dart';
import 'dimensions.dart';

class LoginScreennn extends StatefulWidget {
  const LoginScreennn({Key? key}) : super(key: key);

  @override
  State<LoginScreennn> createState() => _LoginScreennnState();
}

class _LoginScreennnState extends State<LoginScreennn> {
  bool obsecure=true;
  void Eye(){
    setState(() {
      obsecure = !obsecure;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: context.height*0.1,),
            Center(child: Image.asset('assets/tripia2.png')),
            SizedBox(height: context.height*0.06,),
            Center(child: Text(
              'مرحبا',
              style: TextStyle(
                fontSize: Dimensions.font26,

              ),
            )),
            SizedBox(height: context.height*0.07,),
            MyTextField(hintText: 'الايميل', obsecureText: true),
            SizedBox(height: context.height*0.03,),
            MyTextField(hintText: 'كلمة السر', obsecureText: obsecure,suffixicon: GestureDetector(
              onTap: Eye,
              child: obsecure?Icon(LineAwesomeIcons.eye_1,color: Colors.black,):Icon(LineAwesomeIcons.eye_slash_1,color: Colors.black,),
            ),),
            SizedBox(height: context.height*0.01,),
            Row(
              children: [
                SizedBox(width: context.width*0.62,),
                Text20(text: 'نسيت كلمة السر؟'),
              ],
            ),
            SizedBox(height: context.height*0.01,),
            Text20(text: 'او سجل ب',),
            SizedBox(height: context.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaContainer(
                  width:context.width*0.18,
                  height: context.height*0.067,
                  imagePath: 'assets/facebook.png',
                ),
                SizedBox(width: context.width*0.04,),
                SocialMediaContainer(
                  width:context.width*0.18,
                  height: context.height*0.067,
                  imagePath: 'assets/twitter1.png',
                ),
                SizedBox(width: context.width*0.04,),
                SocialMediaContainer(
                  width:context.width*0.18,
                  height: context.height*0.067,
                  imagePath: 'assets/google.png',
                ),
              ],
            ),
            SizedBox(height: context.height*0.06,),
            MyButton(onTap: (){
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(milliseconds: 530),
                  child: Screen1()));
            }, text: 'تسجيل دخول'),
            SizedBox(height: context.height*0.02,),
            Row(
              children: [
                SizedBox(width: context.width*0.28,),
                GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 530),
                          child: SignupScreen()));
                    },
                    child: Text('انشاء حساب',style: TextStyle(fontSize: Dimensions.font20,decoration: TextDecoration.underline),)),
                Text20(text: 'جديد معانا؟')
              ],
            ),
          ],
        ),
      ),
    );
  }
}