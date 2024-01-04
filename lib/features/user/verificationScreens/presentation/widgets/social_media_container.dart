// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class SocialMediaContainer extends StatelessWidget {
  double? width;
  double? height;
  String? imagePath;
  SocialMediaContainer({this.width,this.height,this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white, // Background color
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 4, // Blur radius
              offset: Offset(0, 3), // Offset
            ),
          ]// Background color
      ),
      child: Center(
        child: SvgPicture.asset(
          imagePath!, // Path to your Google icon
          width: context.width*0.08, // Adjust width and height as needed
          height: context.height*0.042,
        ),
      ),
    );
  }
}
