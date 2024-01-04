import 'package:flutter/material.dart';
import 'package:tripia_user/core/app_export.dart';
import 'package:tripia_user/core/utils/extensions.dart';

import '../../../carScreens/presentation/pages/pick_car_screen.dart';

class BookingScreenFinal extends StatelessWidget {
  const BookingScreenFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImg,
            location,
            redLocationPoint,
            redPolygon,
            backgroundContainer,
            Column(
              children: [
                SizedBox(height: height*0.388,),
                meetingPlace,
                SizedBox(height: height*0.01,),
                meetingPlaceField,
                SizedBox(height: height*0.01,),
                destination,
                SizedBox(height: height*0.01,),
                destinationField,
                SizedBox(height: height*0.005,),
                Row(
                  children: [
                    SizedBox(width: width*0.073,),
                    Container(
                        width:width*0.85,
                        height: height*0.036,
                        child: SvgPicture.asset(AppAssets.stripesLineBooking)),
                  ],
                ),
                Container(
                  width: width*0.86,
                  height: height*0.12,
                  padding: EdgeInsets.only(right:width*0.036),
                  decoration: BoxDecoration(
                    color: AppColors.notesTextFieldColor,
                    border: Border.all(
                      color: Colors.white,
                      width: width * 0.003,
                    ),
                    borderRadius: BorderRadius.circular(
                        20.r),
                  ),
                  child: TextFormField(
                    textDirection: TextDirection.rtl,
                    readOnly: false,
                    maxLines: 5,
                    cursorColor: Colors.grey,
                    // Adjust the number of lines as needed (e.g., 3 or 5)
                    decoration: InputDecoration(
                      hintTextDirection: TextDirection.rtl,
                      hintText: AppStrings.doYouHaveAnyNotes,
                      hintStyle: TextStyle(color: AppColors.hintTextFieldColor,fontFamily: FontFamilies.almarai,fontSize: Dimensions.font20/1.2),
                      border: InputBorder.none, // Remove the default border
                    ),

                  ),
                ),
                SizedBox(height: height*0.016,),
                MyButton2(  onTap: (){
                  Navigator.push(context, PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 530),
                      child: PickCarScreen()));
                }, text: AppStrings.searchForTheCar),
              ],
            ),
            Column(
              children: [
                SizedBox(height: height*0.42,),
                Row(
                  children: [
                    SizedBox(width: width*0.912,),
                    Container(
                        height: height*0.09,
                        child: SvgPicture.asset(AppAssets.lineBooking)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  get backgroundImg => Image.asset(
      AppAssets.mapPng);
  get redRectangleSvg => SvgPicture.asset(
      AppAssets.redRectangle);
  get redRectangle => Row(
    children: [
      SizedBox(width: width*0.22,),
      redRectangleSvg,
    ],
  );
  get ahmedMaherText => Align(
    alignment: AlignmentDirectional.centerStart,
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 105.w),
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
  get locationRectangle => Stack(
    children: [
      redRectangle,
      redRectangleText,
    ],
  );
  get redLine => Row(
    children: [
      SizedBox(width: width*0.32,),
      SvgPicture.asset(AppAssets.redLine),
    ],
  );
  get location => Column(
    children: [
      SizedBox(height: height*0.11,),
      locationRectangle,
      redLine,
    ],
  );
  get redPoint => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 117.w),
        child: SvgPicture.asset(AppAssets.redLocationPoint,width: width*0.08,),
      ));
  get redLocationPoint => Column(
    children: [
      SizedBox(height: height*0.18,),
      redPoint,
    ],
  );
  get polygon => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 129.w),
        child: SvgPicture.asset(AppAssets.polygon),
      ));
  get redPolygon => Column(
    children: [
      SizedBox(height: height*0.15,),
      polygon,
    ],
  );
  get whiteContainer => Align(
    alignment: AlignmentDirectional.center,
    child: Container(
      width: width*0.94, // Adjust the width as needed
      height: height*0.515, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.radius20*1.4), // Adjust the radius for the desired circular shape
      ),
    ),
  );
  get backgroundContainer => Column(
    children: [
      SizedBox(height: height*0.365,),
      whiteContainer,
    ],
  );
  get meetingPlaceText => Text(
    AppStrings.meetingPlace,
    style: TextStyle(
        fontFamily: FontFamilies.almarai,
        color: Colors.red,fontSize: Dimensions.font16*1.1),);
  get meetingPlaceIcon => SvgPicture.asset(
    AppAssets.redPointBooking,
    width: width*0.07,
  );
  get meetingPlace => Row(
    children: [
      SizedBox(width: width*0.64,),
      meetingPlaceText,
      SizedBox(width: width*0.015,),
      meetingPlaceIcon,
    ],
  );
  get meetingPlaceField => MyTextField2(
    hintText: AppStrings.street72,
    obsecureText: false,suffixicon:Icon(Icons.location_on,size: Dimensions.iconSize16*1.6,color: AppColors.iconPrefixColor2,),);
  get destinationText => Text(
    AppStrings.destination,
    style: TextStyle(
        fontFamily: FontFamilies.almarai,
        color: Colors.yellow,fontSize: Dimensions.font16*1.1),);
  get destinationIcon => SvgPicture.asset(
    AppAssets.yellowPointBooking,
    width: width*0.07,
  );
  get destination => Row(
    children: [
      SizedBox(width: width*0.738,),
      destinationText,
      SizedBox(width: width*0.015,),
      destinationIcon,
    ],
  );
  get destinationField => MyTextField2(
    hintText: AppStrings.street72,
    obsecureText: false,
    suffixicon:Icon(
      Icons.location_on,
      size: Dimensions.iconSize16*1.6,
      color: AppColors.iconPrefixColor2,
    ),);
}
