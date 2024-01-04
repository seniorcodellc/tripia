import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripia_user/core/app_export.dart';

class BottomSheetPlace extends StatefulWidget {
  const BottomSheetPlace({super.key});

  @override
  State<BottomSheetPlace> createState() => _BottomSheetPlaceState();
}

class _BottomSheetPlaceState extends State<BottomSheetPlace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.678,
      child: Container(
        width: width*0.998,
        height: height*0.65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),  // Adjust the radius as needed
            topRight: Radius.circular(20.0), // Adjust the radius as needed
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(height: height*0.025,),
            greyRectangle,
            SizedBox(height: height*0.016,),
            meetingPlace,
            SizedBox(height: height*0.02,),
            meetingPlaceField,
            SizedBox(height: height*0.015,),
            locationOnMap,
            SizedBox(height: height*0.14,),
            didNotFoundAnyResults,
          ],
        ),
      ),
    );
  }
  get greyRectangle => SvgPicture.asset(AppAssets.greyRectangle,width: width*0.36,);
  get meetingPlace => Text(
    AppStrings.meetingPlace,
    style: TextStyle(
      fontFamily: FontFamilies.almarai,
      fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.1),);
  get meetingPlaceField => MyTextField6(
    hintText: AppStrings.whereDoYouWantToMeat,
    obsecureText: false,
    suffixicon: Icon(CupertinoIcons.search),
  );
  get displayOnMap => Text(
    AppStrings.displayOnMap,
    style: TextStyle(
        color: AppColors.primaryColor,fontSize: Dimensions.font20/1.17,fontWeight: FontWeight.w400,fontFamily: FontFamilies.almarai),);
  get redLocationIcon => SvgPicture.asset(
    AppAssets.locationRedIcon,
    width: width*0.09,);
  get locationOnMap => Row(
    children: [
      SizedBox(width: width*0.54,),
      displayOnMap,
      redLocationIcon,
    ],
  );
  get didNotFoundAnyResults => Text(
    AppStrings.didNotFoundAnyResult,
    style: TextStyle(
        fontSize: Dimensions.font20/1.16,
        color: AppColors.iconPrefixColor,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamilies.almarai),);
}
