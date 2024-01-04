import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:tripia_user/core/app_export.dart';
import 'package:tripia_user/core/utils/app_style.dart';
import 'package:tripia_user/core/utils/extensions.dart';

import '../widgets/button.dart';
import '../widgets/social_media_row.dart';
import '../widgets/text_20.dart';
import '../widgets/textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
            SizedBox(height: height*0.1,),
            logo,
            SizedBox(height: height*0.06,),
            createAccountText,
            SizedBox(height: height*0.025,),
            emailTextField,
            SizedBox(height: height*0.027,),
            passwordTextField,
            SizedBox(height: height*0.027,),
            confirmPasswordTextField,
            SizedBox(height: height*0.04,),
            signWith,
            SizedBox(height: height*0.02,),
            socialMediaIcons,
            SizedBox(height: height*0.05,),
            signUpButton,
            SizedBox(height: height*0.04,),
            signIn,
          ],
        ),
      ),
    );
  }
  get logo => Center(
      child: SvgPicture.asset(AppAssets.loginLogo));
  get createAccountText => Center(child: Text(
    AppStrings.createAccount,
    style: getRegularTextStyle(
        fontFamily: FontFamilies.almarai,
        fontWeight: FontWeight.w700,
        fontSize: Dimensions.font26/1.2,
        color: AppColors.blackText20
    ),
  ));
  get emailTextField => const MyTextField(hintText: AppStrings.email, obsecureText: false);
  get passwordTextField => MyTextField(hintText: AppStrings.password, obsecureText: obsecure,suffixicon: GestureDetector(
    onTap: eye,
    child: obsecure?Icon(LineAwesomeIcons.eye_1,color:AppColors.iconPrefixColor,size: Dimensions.iconSize24,):Icon(LineAwesomeIcons.eye_slash_1,color:AppColors.iconPrefixColor,size: Dimensions.iconSize24,),
  ),);
  get confirmPasswordTextField => MyTextField(hintText: AppStrings.confirmPassword, obsecureText: obsecure,suffixicon: GestureDetector(
    onTap: eye,
    child: obsecure?Icon(LineAwesomeIcons.eye_1,color:AppColors.iconPrefixColor,size: Dimensions.iconSize24,):Icon(LineAwesomeIcons.eye_slash_1,color:AppColors.iconPrefixColor,size: Dimensions.iconSize24,),
  ),);
  get signWith => const Text20(text: AppStrings.signWith);
  get socialMediaIcons => const SocialMediaRow();
  get signUpButton => MyButton(onTap: (){}, text: AppStrings.createAccount);
  get signingInText => GestureDetector(
      onTap: (){
       Routes.loginRoute.moveTo;
      },
      child: Text(AppStrings.signingIn,style: TextStyle(
          fontFamily: FontFamilies.jFlat,
          fontSize: Dimensions.font20/1.2,decoration: TextDecoration.underline,
          color: AppColors.blackText20,fontWeight: FontWeight.w400),));
  get alreadyHaveAccount => const Text20(text: AppStrings.alreadyHaveAnAccount);
  get signIn => Row(
    children: [
      SizedBox(width: width*0.22,),
      signingInText,
      alreadyHaveAccount,
    ],
  );
}
