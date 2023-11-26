import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tripia_user/core/utils/extensions.dart';
import 'package:tripia_user/features/booking_screens/presentation/widgets/bottom_sheet_destination.dart';
import 'package:tripia_user/features/booking_screens/presentation/widgets/bottom_sheet_notes.dart';
import 'package:tripia_user/features/booking_screens/presentation/widgets/bottom_sheet_place.dart';
import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/size-utils.dart';
import '../../../../core/widgets/dimensions.dart';
import '../widgets/buttons.dart';
import '../widgets/textfields.dart';
import 'booking_screen_confirm_loc.dart';

class BookingScreen1 extends StatefulWidget {
  const BookingScreen1({Key? key}) : super(key: key);

  @override
  State<BookingScreen1> createState() => _BookingScreen1State();
}

class _BookingScreen1State extends State<BookingScreen1> {

  void _showBottomSheetPlace() {
    showModalBottomSheet(
      backgroundColor: AppColors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) => BottomSheetPlace()
    );
  }

  void _showBottomSheetDestination() {
    showModalBottomSheet(
        backgroundColor: AppColors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) => BottomSheetDestination()

    );
  }

  void _showBottomSheetNotes() {
    showModalBottomSheet(
        backgroundColor: AppColors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) => BottomSheetNotes()
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImg,
            location,
            locationPoint,
            locationPolygon,
            backgroundContainer,
            bookingDetails,
            locationLine,
          ],
        ),
      ),
    );
  }
  get backgroundImg => Image.asset(AppAssets.mapPng);
  get redRectangle => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.only(left:89.w ),
        child: SvgPicture.asset(AppAssets.redRectangle),
      ));
  get text => Text(AppStrings.ahmedMaher,style: TextStyle(
      fontFamily: FontFamilies.almarai,fontWeight: FontWeight.w400,fontSize: Dimensions.font16/1.15,
      color: Colors.white),);
  get locationText => Align(
    alignment: AlignmentDirectional.centerStart,
    child: Padding(
      padding:  EdgeInsets.only(left: 105.w),
      child: Column(
        children: [
          SizedBox(height: height*0.01,),
          text,
        ],
      ),
    ),
  );
  get redLine => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.only(left: 132.w),
        child: SvgPicture.asset(AppAssets.redLine),
      ));
  get locationOnMap => Stack(
    children: [
      redRectangle,
      locationText,
    ],
  );
  get location => Column(
    children: [
      SizedBox(height: height*0.11,),
      locationOnMap,
      redLine,
    ],
  );
  get redPoint => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.only(left: 117.w),
        child: SvgPicture.asset(AppAssets.redLocationPoint,width: width*0.08,),
      ));
  get locationPoint => Column(
    children: [
      SizedBox(height: height*0.18,),
      redPoint,
    ],
  );
  get redPolygon => Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding:  EdgeInsets.only(left: 128.5.w),
        child: SvgPicture.asset(AppAssets.polygon),
      ));
  get locationPolygon => Column(
    children: [
      SizedBox(height: height*0.15,),
      redPolygon,
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
  get meetingPlaceText => Text(AppStrings.meetingPlace,style: TextStyle(
      fontFamily: FontFamilies.almarai,
      color: Colors.red,fontSize: Dimensions.font16*1.1),);
  get redPointSvg => SvgPicture.asset(
    AppAssets.redPointBooking,
    width: width*0.07,
  );
  get meetingPlace => Row(
    children: [
      SizedBox(width: width*0.64,),
      meetingPlaceText,
      SizedBox(width: width*0.015,),
      redPointSvg,
    ],
  );
  get meetingPlaceField =>  MyTextField2(
    hintText: AppStrings.street72,
    obsecureText: false,
    suffixicon:Icon(Icons.location_on,size: Dimensions.iconSize16*1.6,color: AppColors.iconPrefixColor2,
  ),
    onTap: () {_showBottomSheetPlace();
  },);
  get destinationText => Text(AppStrings.destination,style: TextStyle(
      fontFamily: FontFamilies.almarai,
      color: Colors.yellow,fontSize: Dimensions.font16*1.1),);
  get destinationSvg => SvgPicture.asset(
    AppAssets.yellowPointBooking,
    width: width*0.07,
  );
  get destination => Row(
    children: [
      SizedBox(width: width*0.738,),
      destinationText,
      SizedBox(width: width*0.015,),
      destinationSvg,
    ],
  );
  get destinationField => MyTextField4(
    hintText: AppStrings.chooseThePlace,
    obsecureText: false,
    suffixicon: Icon(Icons.location_on,size: Dimensions.iconSize16*1.6,color: AppColors.iconPrefixColor2,),
    onTap: (){
      _showBottomSheetDestination();
    },
  );
  get stripesLine => Align(
    alignment: AlignmentDirectional.center,
    child: SizedBox(
        width:width*0.85,
        height: height*0.036,
        child: SvgPicture.asset(AppAssets.stripesLineBooking)),
  );
  get noteField => Container(
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
          Dimensions.radius20),
    ),
    child: TextFormField(
      onTap: (){
        _showBottomSheetNotes();
      },
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
  );
  get searchForCarButton => MyButton2(onTap: (){
    Navigator.push(context, PageTransition(
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 550),
        child: const BookingScreenConfirmLoc()));
  }, text: AppStrings.searchForTheCar);
  get bookingDetails => Column(
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
      stripesLine,
      noteField,
      SizedBox(height: height*0.016,),
      searchForCarButton,
    ],
  );
  get locationRedLineSvg => SizedBox(
      height: height*0.09,
      child: SvgPicture.asset(AppAssets.lineBooking));
  get locationRedLine => Row(
    children: [
      SizedBox(width: width*0.912,),
      locationRedLineSvg,
    ],
  );
  get locationLine => Column(
    children: [
      SizedBox(height: height*0.42,),
      locationRedLine,
    ],
  );
}
