import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/size-utils.dart';
import '../../../../core/widgets/dimensions.dart';
import '../pages/booking_screen_confirm_loc.dart';
import 'buttons.dart';

class BottomSheetNotes extends StatefulWidget {
  const BottomSheetNotes({super.key});

  @override
  State<BottomSheetNotes> createState() => _BottomSheetNotesState();
}

class _BottomSheetNotesState extends State<BottomSheetNotes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.68,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20),  // Adjust the radius as needed
          topRight: Radius.circular(Dimensions.radius20), // Adjust the radius as needed
        ),
      ),
      child:  Column(
        children: [
          SizedBox(height: height*0.025,),
          greyRectangle,
          SizedBox(height: height*0.016,),
          notes,
          SizedBox(height: height*0.025,),
          notesField,
          SizedBox(height: height*0.245,),
          buttons,
        ],
      ),
    );
  }
  get greyRectangle => SvgPicture.asset(
    AppAssets.greyRectangle,
    width: width*0.36,);
  get notes => Text(
    AppStrings.notes,
    style: TextStyle(
        fontFamily: FontFamilies.almarai,
        fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.1),);
  get notesField => Container(
    width: width*0.92,
    height: height*0.153,
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
  get cancelButton => MyButtonCancel(
      onTap: (){},
      text: AppStrings.cancel
  );
  get saveButton => MyButtonSave(
      onTap: (){
        Navigator.push(context, PageTransition(
            type: PageTransitionType.fade,
            duration: Duration(milliseconds: 550),
            child: BookingScreenConfirmLoc()));
      },
      text: AppStrings.save);
  get buttons => Row(
    children: [
      SizedBox(width: width*0.03,),
      cancelButton,
      SizedBox(width: width*0.08,),
      saveButton,
    ],
  );
}
