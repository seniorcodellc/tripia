import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripia_user/core/utils/extensions.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/size-utils.dart';
import '../../../../core/widgets/dimensions.dart';
import '../widgets/buttons.dart';

class BookingScreenConfirmLoc extends StatelessWidget {
  const BookingScreenConfirmLoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImg,
            locationRectangle,
            redLocationPoint,
            redPolygon,
            chooseOnTheMap,
            button,
          ],
        ),
      ),
    );
  }
  get backgroundImg => Image.asset(
      AppAssets.mapPng);
  get redRectangle => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 73.w),
        child: SvgPicture.asset(AppAssets.redRectangle),
      ));
  get ahmedMaherText => Align(
    alignment: AlignmentDirectional.centerStart,
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 88.w),
      child: Text(
        AppStrings.ahmedMaher,
        style: TextStyle(
            fontFamily: FontFamilies.almarai,
            fontWeight: FontWeight.w400,
            fontSize: Dimensions.font16/1.15,
            color: Colors.white),),
    ),
  );
  get redRectangleText => Column(
    children: [
      SizedBox(height: height*0.01,),
      ahmedMaherText,
    ],
  );
  get location => Stack(
    children: [
      redRectangle,
      redRectangleText,
    ],
  );
  get redLine => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 119.5.w),
        child: SvgPicture.asset(AppAssets.redLine),
      ));
  get locationRectangle => Column(
    children: [
      SizedBox(height: height*0.29,),
      location,
      redLine,
    ],
  );
  get redLocationPoint => Column(
    children: [
      SizedBox(height: height*0.355,),
      Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 104.w),
            child: SvgPicture.asset(AppAssets.redLocationPoint,width: width*0.08,),
          )),
    ],
  );
  get redPolygon => Column(
    children: [
      SizedBox(height: height*0.33,),
      Align(
          alignment:AlignmentDirectional.centerStart,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 116.w),
            child: SvgPicture.asset(AppAssets.polygon),
          )),
    ],
  );
  get chooseOnTHeMapText => Center(
    child: Container(
      width: width*0.85,
      height: height*0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Adjust the radius to control the roundness
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 1, // Spread of the shadow
            blurRadius: 4, // Blur radius
            offset: Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: Center(
        child: Text(
          AppStrings.chooseOnThaMap,
          style: TextStyle(
            fontFamily: FontFamilies.almarai,
            fontWeight: FontWeight.w700,
            fontSize: Dimensions.font16/1.05,
          ),
        ),
      ),
    ),
  );
  get chooseOnTheMap => Column(
    children: [
      SizedBox(height: height*0.095,),
      chooseOnTHeMapText,
    ],
  );
  get thisIsThePlace => Center(
    child: MyButton2(onTap: (){
      Routes.bookingScreenFinal.moveToAndRemoveCurrent;
    },
        text: AppStrings.thisIsThePlace),
  );
  get button => Column(
    children: [
      SizedBox(height: height*0.85,),
      thisIsThePlace,
    ],
  );
}
