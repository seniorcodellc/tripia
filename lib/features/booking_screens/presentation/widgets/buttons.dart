import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';
//////////////////////ButtonBookingScreen1\\\\\\\\\\\\\\\\\\\\\\\\\
class MyButton2 extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButton2({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width*0.47,
        height: context.height*0.067,
        decoration: BoxDecoration(color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(Dimensions.radius20*1.2)),
        child: Center(
          child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: Dimensions.font20/1.2,
                fontFamily: FontFamilies.almarai,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
//////////////////////Button1BookingScreenNotes\\\\\\\\\\\\\\\\\\\\\\\\\
class MyButtonSave extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButtonSave({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width*0.43,
        height: context.height*0.067,
        decoration: BoxDecoration(color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(Dimensions.radius20)),
        child: Center(
          child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: Dimensions.font20/1.2,
                fontFamily: FontFamilies.almarai,
                fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class MyButtonCancel extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButtonCancel({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width*0.43,
        height: context.height*0.067,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.radius20),
        border: Border.all(color: AppColors.primaryColor,width: context.width*0.0045)),
        child: Center(
          child: Text(text,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: Dimensions.font20/1.2,
              fontFamily: FontFamilies.almarai,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
