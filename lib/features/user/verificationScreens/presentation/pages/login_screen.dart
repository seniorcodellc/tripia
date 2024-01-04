import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:tripia_user/core/app_export.dart';
import 'package:tripia_user/core/utils/app_style.dart';
import 'package:tripia_user/core/utils/extensions.dart';
import 'package:tripia_user/features/user/verificationScreens/presentation/widgets/social_media_row.dart';

import '../widgets/button.dart';
import '../widgets/text_20.dart';
import '../widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreennnState();
}

class _LoginScreennnState extends State<LoginScreen> {
  bool obsecure=true;
  void eye(){
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
            SizedBox(height: height*0.115,),
            logo,
            SizedBox(height:height*0.06,),
            helloText,
            SizedBox(height: height*0.07,),
            emailTextField,
            SizedBox(height: height*0.03,),
            passwordTextField,
            SizedBox(height:height*0.01,),
            forgetPassword,
            SizedBox(height: height*0.05,),
            signWith,
            SizedBox(height: height*0.034,),
            socialMediaIcons,
            SizedBox(height: height*0.06,),
            signInButton,
            SizedBox(height: height*0.04,),
            createAccount,
          ],
        ),
      ),
    );
  }
  get logo => Center(
      child: SvgPicture.asset(
          AppAssets.loginLogo
      ));
  get helloText => Center(
      child: Text(
    AppStrings.hello,
    style: getRegularTextStyle(
        fontFamily: FontFamilies.almarai,
        fontSize: Dimensions.font26/1.2,
        fontWeight: FontWeight.w700,
        color: AppColors.blackText20
    ),
  ));
  get emailTextField =>  const MyTextField(hintText: AppStrings.email, obsecureText: false);
  get passwordTextField => MyTextField(hintText: AppStrings.password, obsecureText: obsecure,suffixicon: GestureDetector(
    onTap: eye,
    child: obsecure?Icon(LineAwesomeIcons.eye_1,color:AppColors.iconPrefixColor,size: Dimensions.iconSize24,):Icon(LineAwesomeIcons.eye_slash_1,color:AppColors.iconPrefixColor,size: Dimensions.iconSize24,),
  ),);
  get forgetPassword => Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding:  EdgeInsets.only(right: 43.w),
        child: const Text20(text: AppStrings.forgotPassword),
      ));
  get signWith => const Text20(text: AppStrings.signWith,);
  get socialMediaIcons => const  SocialMediaRow();
  get signInButton => MyButton(onTap: (){
    Routes.bookingScreen1Route.moveToAndRemoveCurrent;
  }, text: AppStrings.signingIn);
  get createAccountText => GestureDetector(
      onTap: (){
       Routes.signupRoute.moveTo;
      },
      child: Text(AppStrings.createAccount,style: TextStyle(
          fontFamily: FontFamilies.jFlat,
          fontSize: Dimensions.font20/1.2,decoration: TextDecoration.underline,fontWeight: FontWeight.w400,color: AppColors.blackText20),));
  get newWithUsText => const Text20(text: AppStrings.newWithUs);
  get createAccount => Row(
    children: [
      SizedBox(width: width*0.295,),
      createAccountText,
      SizedBox(width: width*0.006,),
      newWithUsText,
    ],
  );
}
