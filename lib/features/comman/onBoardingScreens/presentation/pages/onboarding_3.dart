import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripia_user/core/utils/app-assets.dart';
import 'package:tripia_user/core/utils/app_fonts.dart';
import 'package:tripia_user/core/utils/app_style.dart';
import 'package:tripia_user/core/utils/extensions.dart';
import 'package:tripia_user/core/utils/widgets/dimensions.dart';
import 'package:tripia_user/features/comman/onBoardingScreens/presentation/widgets/skip_text.dart';

import '../../../../../core/app_export.dart';
import '../widgets/splash_button.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.064,
            ),
            skipText,
            SizedBox(
              height: height * 0.08,
            ),
            imgs,
            SizedBox(
              height: height * 0.05,
            ),
            title,
            SizedBox(
              height: height * 0.044,
            ),
            description1,
            description2,
            SizedBox(
              height: height * 0.035,
            ),
            onboardingButton,
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  get skipText => const SkipText();
  get backgroundImg => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: SvgPicture.asset(
          AppAssets.onboarding1img1,
          width: width * 0.8,
          height: height * 0.426,
        ),
      );
  get tImg => Align(
        alignment: AlignmentDirectional.center,
        child: SvgPicture.asset(
          AppAssets.onboarding3Img,
          width: width * 0.88,
          height: height * 0.25,
        ),
      );
  get tLetterImg => Column(
        children: [
          SizedBox(
            height: height * 0.12,
          ),
          tImg,
        ],
      );
  get imgs => Stack(
        children: [
          backgroundImg,
          tLetterImg,
        ],
      );
  get redUnderLine => Container(
        width: width * 0.32, // Set the width of the rectangle
        height: height * 0.01, // Set the height of the rectangle
        decoration: BoxDecoration(
          color: Colors.redAccent.shade200, // Set the background color
          //border: Border.all(color: Colors.redAccent, width: 2.0), // Optional border
        ),
      );
  get redContainer => Column(
        children: [
          SizedBox(
            height: height * 0.0345,
          ),
          redUnderLine,
        ],
      );
  get redUnderlineText => Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding: EdgeInsets.only(right: 20.w),
        child: redContainer,
      ));
  get underLinedText => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 14.w),
          child: Text(
            AppStrings.getReadyForYourTripWithUs,
            style: getRegularTextStyle(
              fontFamily: FontFamilies.almarai,
              color: AppColors.onboardingTextColor,
              fontSize: Dimensions.font26 * 1.2,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
  get title => Stack(
        children: [
          redUnderlineText,
          underLinedText,
        ],
      );
  get description1 => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: Text(
            AppStrings.youChooseThePlace,
            style: getRegularTextStyle(
                fontFamily: FontFamilies.jFlat,
                color: AppColors.onboardingTextColor,
                fontSize: Dimensions.font26 * 1.2,
                fontWeight: FontWeight.w400),
          ),
        ),
      );
  get description2 => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: Text(
            AppStrings.leaveTheRestForUS,
            style: getRegularTextStyle(
                fontFamily: FontFamilies.jFlat,
                color: AppColors.onboardingTextColor,
                fontSize: Dimensions.font26 * 1.2,
                fontWeight: FontWeight.w400),
          ),
        ),
      );
  get redCircle => SplashButton(onTap: () {
        Routes.loginRoute.moveToAndRemoveCurrent;
      });
  get circularProgress => InkWell(
        onTap: () {
          Routes.loginRoute.moveToAndRemoveCurrent;
        },
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: EdgeInsets.only(left: 73.w),
            child: SizedBox(
              width: 103.w,
              height: 103.h,
              child: const CircularProgressIndicator(
                value: 0,
                backgroundColor: AppColors.primaryColor,
                color: AppColors.rosColor,
              ),
            ),
          ),
        ),
      );
  get onboardingButton => Stack(
        children: [
          redCircle,
          circularProgress,
        ],
      );
}
