import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripia_user/core/app_export.dart';
import 'package:tripia_user/core/utils/app_fonts.dart';
import 'package:tripia_user/core/utils/app_style.dart';
import 'package:tripia_user/core/utils/extensions.dart';
import 'package:tripia_user/core/utils/widgets/dimensions.dart';
import 'package:tripia_user/features/comman/onBoardingScreens/presentation/widgets/skip_text.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            onboardingBody,
            carImg,
          ],
        ),
      ),
    );
  }

  get skipText => const SkipText();
  get redLine => Container(
        width: width * 0.28, // Set the width of the rectangle
        height: height * 0.01, // Set the height of the rectangle
        decoration: BoxDecoration(
          color: Colors.redAccent.shade200, // Set the background color
          //border: Border.all(color: Colors.redAccent, width: 2.0), // Optional border
        ),
      );
  get redlineUnderText => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 27.w),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              redLine,
            ],
          ),
        ),
      );
  get underLinedText => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 19.w),
          child: Text(
            AppStrings.bestPriceAndLessTime,
            style: getRegularTextStyle(
              fontFamily: FontFamilies.almarai,
              color: AppColors.onboardingTextColor,
              fontSize: Dimensions.font26 * 1.1,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
  get title => Stack(
        children: [
          redlineUnderText,
          underLinedText,
        ],
      );
  get description1 => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text(
            AppStrings.weWillDeliverYou,
            style: getRegularTextStyle(
              fontFamily: FontFamilies.jFlat,
              color: AppColors.onboardingTextColor,
              fontWeight: FontWeight.w400,
              fontSize: Dimensions.font26 * 1.17,
            ),
          ),
        ),
      );
  get description2 => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text(
            AppStrings.thebestWith,
            style: getRegularTextStyle(
              fontFamily: FontFamilies.jFlat,
              color: AppColors.onboardingTextColor,
              fontWeight: FontWeight.w400,
              fontSize: Dimensions.font26 * 1.17,
            ),
          ),
        ),
      );
  get description3 => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text(
            AppStrings.price,
            style: getRegularTextStyle(
              fontFamily: FontFamilies.jFlat,
              color: AppColors.onboardingTextColor,
              fontWeight: FontWeight.w400,
              fontSize: Dimensions.font26 * 1.17,
            ),
          ),
        ),
      );
  get backgroundImg => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: SvgPicture.asset(
          AppAssets.onboarding1img1,
          width: width * 0.92,
          height: height * 0.433,
        ),
      );
  get redCircle => Align(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: EdgeInsets.only(left: 54.w),
          child: Container(
            width: width * 0.37, // Set the desired width and height
            height: height * 0.124,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.red, // Border color
                width: 3.0, // Border thickness
              ),
            ),
          ),
        ),
      );
  get icon => Positioned(
        top: height * 0.013,
        right: width * 0.586,
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Container(
              width: width * 0.2, // Set the desired width and height
              height: height * 0.098,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_forward, // Replace with the desired icon
                  color: Colors.white, // Change the icon color
                  size: 30, // Change the icon size
                ),
              ),
            ),
          ),
        ),
      );
  get gradientCircle => Align(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: SizedBox(
            width: 99.w,
            height: 100.h,
            child: const CircularProgressIndicator(
              value: 0.3,
              backgroundColor: AppColors.primaryColor,
              color: AppColors.rosColor,
            ),
          ),
        ),
      );
  get circularProgress => Stack(
        children: [
          redCircle,
          icon,
          gradientCircle,
        ],
      );
  get button => GestureDetector(
        onTap: () {
          Routes.onboarding3.moveToAndRemoveCurrent;
        },
        child: Column(
          children: [
            SizedBox(
              height: height * 0.48,
            ),
            circularProgress,
          ],
        ),
      );
  get backgroundImgAndButton => Stack(
        children: [
          backgroundImg,
          button,
        ],
      );
  get img2 => Align(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: SvgPicture.asset(
            AppAssets.onboarding2CarImg,
            width: width * 0.91,
          ),
        ),
      );
  get carImg => Column(
        children: [
          SizedBox(
            height: height * 0.33,
          ),
          img2,
        ],
      );
  get onboardingBody => Column(
        children: [
          SizedBox(
            height: height * 0.064,
          ),
          skipText,
          title,
          SizedBox(
            height: height * 0.045,
          ),
          description1,
          description2,
          description3,
          SizedBox(
            height: height * 0.07,
          ),
          backgroundImgAndButton,
          SizedBox(
            height: height * 0.02,
          ),
        ],
      );
}
