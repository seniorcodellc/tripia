import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripia_user/core/utils/widgets/dimensions.dart';

import '../../../../../core/app_export.dart';

class SplashButton extends StatelessWidget {
  final Function()? onTap;
  SplashButton({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(
                  width: context.width * 0.117,
                ),
                Container(
                  width: context.width * 0.37, // Set the desired width and height
                  height: context.height * 0.124,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: AppColors.primaryColor, // Border color
                      width: 3.0, // Border thickness
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: context.height * 0.013,
              right: context.width * 0.598,
              child: Row(
                children: [
                  SizedBox(
                    width: context.width * 0.2,
                  ),
                  Container(
                    width: context.width * 0.2, // Set the desired width and height
                    height: context.height * 0.098,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward, // Replace with the desired icon
                        color: Colors.white, // Change the icon color
                        size: Dimensions.iconSize24 + Dimensions.iconSize16 / 2, // Change the icon size
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
