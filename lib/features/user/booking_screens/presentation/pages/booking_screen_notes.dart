import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tripia_user/core/app_export.dart';

import '../widgets/buttons.dart';

class BookingScreenNotes extends StatelessWidget {
  const BookingScreenNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ColorFiltered(colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken
            ),
              child: Stack(
                children: [
                  Image.asset(AppAssets.mapPng),
                  Column(
                    children: [
                      SizedBox(height: context.height*0.11,),
                      Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: context.width*0.22,),
                              SvgPicture.asset(AppAssets.redRectangle),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: context.width*0.255,),
                              Column(
                                children: [
                                  SizedBox(height: context.height*0.01,),
                                  Text(AppStrings.ahmedMaher,style: TextStyle(
                                      fontFamily: FontFamilies.almarai,fontWeight: FontWeight.w400,fontSize: Dimensions.font16/1.15,
                                      color: Colors.white),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: context.width*0.32,),
                          SvgPicture.asset(AppAssets.redLine),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: context.height*0.18,),
                      Row(
                        children: [
                          SizedBox(width: context.width*0.282,),
                          SvgPicture.asset(AppAssets.redLocationPoint,width: context.width*0.08,),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: context.height*0.15,),
                      Row(
                        children: [
                          SizedBox(width: context.width*0.31,),
                          SvgPicture.asset(AppAssets.polygon),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.338,),
                Container(
                  width: context.width*0.998,
                  height: context.height*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: context.height*0.025,),
                      SvgPicture.asset(AppAssets.greyRectangle,width: context.width*0.36,),
                      SizedBox(height: context.height*0.016,),
                      Text(AppStrings.notes,style: TextStyle(
                          fontFamily: FontFamilies.almarai,
                          fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.1),),
                      SizedBox(height: context.height*0.025,),
                      Container(
                        width: context.width*0.92,
                        height: context.height*0.153,
                        padding: EdgeInsets.only(right:context.width*0.036),
                        decoration: BoxDecoration(
                          color: AppColors.notesTextFieldColor,
                          border: Border.all(
                            color: Colors.white,
                            width: context.width * 0.003,
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
                      ),
                      SizedBox(height: context.height*0.245,),
                      Row(
                        children: [
                         SizedBox(width: context.width*0.03,),
                         MyButtonCancel(
                             onTap: (){},
                             text: AppStrings.cancel
                         ),
                         SizedBox(width: context.width*0.08,),
                         MyButtonSave(
                              onTap: (){
                                // Navigator.push(context, PageTransition(
                                //     type: PageTransitionType.fade,
                                //     duration: Duration(milliseconds: 550),
                                //     child: BookingScreenConfirmLoc()));
                              },
                              text: AppStrings.save),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
