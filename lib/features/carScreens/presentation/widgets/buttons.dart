import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';
/////////////////////////////////////////Button Complete\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class MyButtonComp extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButtonComp({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width*0.825,
        height: context.height*0.072,
        decoration: BoxDecoration(color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(Dimensions.radius20*1.4)),
        child: Center(
          child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: Dimensions.font20,
                fontFamily: FontFamilies.Outfit,
                fontWeight: FontWeight.w800
            ),
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////Button Save\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class MyButtonTripSave extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButtonTripSave({Key? key, required this.onTap, required this.text}) : super(key: key);

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
///////////////////////////////////////////Button Cancel\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class MyButtonTripCancel extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButtonTripCancel({Key? key, required this.onTap, required this.text}) : super(key: key);

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
