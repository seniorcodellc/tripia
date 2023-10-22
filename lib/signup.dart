import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:okay/text_field.dart';
import 'package:page_transition/page_transition.dart';
import 'dimensions.dart';
import 'login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              'انشاء حساب',
              style: TextStyle(
                fontSize: Dimensions.font26,

              ),
            )),
            SizedBox(height: context.height*0.025,),
            MyTextField(hintText: 'الايميل', obsecureText: true),
            SizedBox(height: context.height*0.02,),
            MyTextField(hintText: 'كلمة السر', obsecureText: obsecure,suffixicon: GestureDetector(
              onTap: Eye,
              child: obsecure?Icon(LineAwesomeIcons.eye_1,color: Colors.black,):Icon(LineAwesomeIcons.eye_slash_1,color: Colors.black,),
            ),),
            SizedBox(height: context.height*0.02,),
            MyTextField(hintText: 'تأكيد كلمة السر', obsecureText: obsecure,suffixicon: GestureDetector(
              onTap: Eye,
              child: obsecure?Icon(LineAwesomeIcons.eye_1,color: Colors.black,):Icon(LineAwesomeIcons.eye_slash_1,color: Colors.black,),
            ),),
            SizedBox(height: context.height*0.03,),
            Text20(text: 'او سجل ب'),
            SizedBox(height: context.height*0.02,),
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
            SizedBox(height: context.height*0.05,),
            MyButton(onTap: (){}, text: 'انشاء حساب'),
            SizedBox(height: context.height*0.016,),
            Row(
              children: [
                SizedBox(width: context.width*0.24,),
                GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 600),
                          child: LoginScreennn()));
                    },
                    child: Text('تسجيل دخول',style: TextStyle(fontSize: Dimensions.font20/1.1,decoration: TextDecoration.underline),)),
                Text20(text: 'لديك حساب بالفعل؟'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
