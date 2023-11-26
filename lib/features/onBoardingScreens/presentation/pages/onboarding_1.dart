import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripia_user/core/utils/app_style.dart';
import 'package:tripia_user/core/utils/extensions.dart';
import 'package:tripia_user/core/widgets/dimensions.dart';
import 'package:tripia_user/features/onBoardingScreens/presentation/widgets/skip_text.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/size-utils.dart';
import '../widgets/splash_button.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.064,),
            skipText,
            SizedBox(height:height*0.09,),
            onboardingImgs,
            SizedBox(height:height*0.05,),
            title,
            SizedBox(height:height*0.04,),
            description1,
            description2,
            SizedBox(height: height*0.035,),
            onboardingButton,
            SizedBox(height:height*0.02,),
          ],
        ),
      ),
    );
  }
  get skipText => const SkipText();
  get backgroundImg =>  Row(
    children: [
      SizedBox(width: width*0.1),
      SvgPicture.asset(
        AppAssets.onboarding1img1,
        width: width*0.8,
        height:height*0.42,
      ),
    ],
  );
  get carImg => Column(
    children: [
      SizedBox(height: height*0.11,),
      Row(
        children: [
          SizedBox(width: width*0.013,),
          SvgPicture.asset(
            AppAssets.onboarding1img2,
            width: width*0.88,
          ),
        ],
      ),
    ],
  );
  get onboardingImgs => Stack(
    children: [
      backgroundImg,
      carImg,
    ],
  );
  get underLineDivider => Container(
    width: width*0.32, // Set the width of the rectangle
    height: height*0.01, // Set the height of the rectangle
    decoration: BoxDecoration(
      color: Colors.redAccent.shade200, // Set the background color
      //border: Border.all(color: Colors.redAccent, width: 2.0), // Optional border
    ),
  );
  get redUnderline => Column(
    children: [
      SizedBox(height: height*0.032,),
      underLineDivider,
    ],
  );
  get underlineText => Row(
    children: [
      SizedBox(width: width*0.63,),
      redUnderline,
    ],
  );
  get titleText => Align(
    alignment: AlignmentDirectional.centerEnd,
    child: Padding(
      padding:  EdgeInsets.only(right:24.w),
      child: Text(
        AppStrings.withTripia,
        style: TextStyle(
          fontFamily: FontFamilies.almarai,
          color: AppColors.onboardingTextColor,
          fontSize: Dimensions.font26*1.2,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
  get title=> Stack(
    children: [
      underlineText,
      titleText,
    ],
  );
  get description1 => Align(
    alignment: AlignmentDirectional.centerEnd,
    child: Padding(
      padding:  EdgeInsets.only(right: 15.w),
      child: Text(
        AppStrings.enjoyTripia,
        style: getRegularTextStyle(
          fontFamily: FontFamilies.jFlat,
          fontWeight: FontWeight.w400,
          color: AppColors.onboardingTextColor,
          fontSize: Dimensions.font26*1.17,
        ),
      ),
    ),
  );
  get description2 => Align(
    alignment: AlignmentDirectional.centerEnd,
    child: Padding(
      padding:  EdgeInsets.only(right: 15.w),
      child: Text(
        AppStrings.arabicAsYouLike,
        style: getRegularTextStyle(
          fontFamily: FontFamilies.jFlat,
          fontWeight: FontWeight.w400,
          color: AppColors.onboardingTextColor,
          fontSize: Dimensions.font26*1.17,
        ),
      ),
    ),
  );
  get circleProg => const SizedBox(
    width: 91,
    height:91 ,
    child: CircularProgressIndicator(
      value:0.6,
      backgroundColor: AppColors.primaryColor,
      color: AppColors.rosColor,
    ),
  );
  get splashButton =>  SplashButton(onTap: (){
    Routes.onboarding2.moveToAndRemoveCurrent;
  });
  get circleProgress => InkWell(
    onTap: (){
      Routes.onboarding2.moveToAndRemoveCurrent;
    },
    child: Row(
      children: [
        SizedBox(width:width*0.176,),
        circleProg,
      ],
    ),
  );
  get onboardingButton => Stack(
    children: [
      splashButton,
      circleProgress,
    ],
  );
}
