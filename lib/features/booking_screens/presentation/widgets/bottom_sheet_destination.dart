import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripia_user/features/booking_screens/presentation/widgets/textfields.dart';

import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/size-utils.dart';
import '../../../../core/widgets/dimensions.dart';

class BottomSheetDestination extends StatefulWidget {
  const BottomSheetDestination({super.key});

  @override
  State<BottomSheetDestination> createState() => _BottomSheetDestinationState();
}

class _BottomSheetDestinationState extends State<BottomSheetDestination> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20),  // Adjust the radius as needed
          topRight: Radius.circular(Dimensions.radius20), // Adjust the radius as needed
        ),
      ),
      child: Container(
        width: width*0.998,
        height: height*0.68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20),  // Adjust the radius as needed
            topRight: Radius.circular(Dimensions.radius20),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(height: height*0.025,),
            greyRectangle,
            SizedBox(height: height*0.016,),
            destination,
            SizedBox(height: height*0.02,),
            destinationField,
            SizedBox(height: height*0.015,),
            displayOnMap,
            SizedBox(height: height*0.14,),
            didNotFoundAnyResult,
          ],
        ),
      ),
    );
  }
  get greyRectangle => SvgPicture.asset(AppAssets.greyRectangle,width: width*0.36,);
  get destination => Text(
    AppStrings.destination,
    style: TextStyle(
        fontFamily: FontFamilies.almarai,
        fontWeight: FontWeight.w700,
        fontSize: Dimensions.font26/1.1
    ),);
  get destinationField => MyTextField6(
    hintText: AppStrings.whereDoYouWantToMeat,
    obsecureText: false,
    suffixicon: Icon(CupertinoIcons.search),
  );
  get displayOnMapText => Text(
    AppStrings.displayOnMap,
    style: TextStyle(
        color: AppColors.primaryColor,
        fontSize: Dimensions.font20/1.17,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamilies.almarai),);
  get redLocationPoint => SvgPicture.asset(
    AppAssets.locationRedIcon,
    width: width*0.09,
  );
  get displayOnMap => Row(
    children: [
      SizedBox(width: width*0.54,),
      displayOnMapText,
      redLocationPoint,
    ],
  );
  get didNotFoundAnyResult => Text(
    AppStrings.didNotFoundAnyResult,
    style: TextStyle(
        fontSize: Dimensions.font20/1.16,
        color: AppColors.iconPrefixColor,
        fontWeight: FontWeight.w400,
        fontFamily: FontFamilies.almarai),);
}
