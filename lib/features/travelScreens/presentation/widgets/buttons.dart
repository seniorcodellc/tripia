import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';

class MyButtonTravel extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButtonTravel({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width*0.83,
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

class MyButtonDone extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButtonDone({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width*0.27,
        height: context.height*0.067,
        decoration: BoxDecoration(color: AppColors.primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey, // Change the shadow color to your liking
                blurRadius: 5, // Adjust the blur radius as needed
                offset: Offset(0, 2), // Adjust the shadow offset as needed
              ),
            ],
            borderRadius: BorderRadius.circular(Dimensions.radius20*1.1)),
        child: Center(
          child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: Dimensions.font20/1.1,
                fontFamily: FontFamilies.almarai,
                fontWeight: FontWeight.w800
            ),
          ),
        ),
      ),
    );
  }
}
