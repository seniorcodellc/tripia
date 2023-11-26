import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tripia_user/features/carScreens/presentation/pages/best_driver.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';
import '../widgets/buttons.dart';

class PickCarScreen extends StatefulWidget {
  bool isRed1 = true;
  bool isRed2 = true;
  PickCarScreen({Key? key}) : super(key: key);

  @override
  State<PickCarScreen> createState() => _PickCarScreenState();
}

class _PickCarScreenState extends State<PickCarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: context.height*0.02,),
                Image.asset(AppAssets.map2,),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.05,),
                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: context.width*0.105,),
                        SvgPicture.asset(AppAssets.redRectangle),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.14,),
                        Column(
                          children: [
                            SizedBox(height: context.height*0.011,),
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
                    SizedBox(width: context.width*0.2,),
                    SvgPicture.asset(AppAssets.redLine),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.12,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.162,),
                    SvgPicture.asset(AppAssets.redLocationPoint,width: context.width*0.08,),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.09,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.191,),
                    SvgPicture.asset(AppAssets.polygon),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.135,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.2,),
                    SvgPicture.asset(AppAssets.lineCar),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.177,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.206,),
                    SvgPicture.asset(AppAssets.longLineCar,width: context.width*0.684,),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.364,),
                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: context.width*0.77,),
                        SvgPicture.asset(AppAssets.redRectangle),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.805,),
                        Column(
                          children: [
                            SizedBox(height: context.height*0.011,),
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
                    SizedBox(width: context.width*0.883,),
                    SvgPicture.asset(AppAssets.redLine),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.43,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.845,),
                    SvgPicture.asset(AppAssets.redLocationPoint,width: context.width*0.08,),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.405,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.875,),
                    SvgPicture.asset(AppAssets.polygon),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: context.height*0.504,),
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: context.width*0.998,
                          height: context.height*0.497,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20*1.3),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: context.height*0.025,),
                              SvgPicture.asset(AppAssets.greyRectangle,width: context.width*0.36,),
                              SizedBox(height: context.height*0.016,),
                              Text(AppStrings.chooseCarType,style: TextStyle(
                                  fontFamily: FontFamilies.almarai,
                                  fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.3),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ///Tripia B
                        Column(
                          children: [
                            SizedBox(height: context.height*0.108,),
                            Row(
                              children: [
                                SizedBox(width: context.width*0.05,),
                                InkWell(
                                  onTap:(){
                                    setState(() {
                                      widget.isRed1=true;
                                      widget.isRed2=false;
                                    });
                                  },
                                  child: Container(
                                    width: context.width*0.43,
                                    height: context.height*0.2,
                                    decoration: BoxDecoration(
                                        color: AppColors.notesTextFieldColor,
                                        border: Border.all(
                                        color:widget.isRed1==true && widget
                                            .isRed2==false? AppColors.primaryColor:AppColors.transparent,
                                      ),
                                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey, // Shadow color
                                          blurRadius: 1,     // Spread of the shadow
                                          offset: Offset(0, 1), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: context.height*0.02,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.02,),
                                            SvgPicture.asset(AppAssets.carIcon),
                                            SizedBox(width: context.width*0.135,),
                                            if(widget.isRed1==true && widget
                                                .isRed2==false)
                                              SvgPicture.asset(AppAssets.trueRedSign),
                                          ],
                                        ),
                                        SizedBox(height: context.height*0.01,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.04,),
                                            Text(AppStrings.tripiaB,
                                           style: TextStyle(
                                             color:AppColors.textColor,
                                             fontWeight: FontWeight.w700,
                                             fontFamily: FontFamilies.almarai,
                                             fontSize: Dimensions.font16*1.1
                                           ),
                                           ),
                                            SizedBox(width: context.width*0.01,),
                                            Column(
                                              children: [
                                                SizedBox(height: context.height*0.006,),
                                                Text(AppStrings.threeCars,
                                                  style: TextStyle(
                                                      color:AppColors.locationTextFieldBlackColor,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: FontFamilies.jFlat,
                                                      fontSize: Dimensions.font16/1.34
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: context.height*0.008,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.048,),
                                            Text(AppStrings.away500M,
                                              style: TextStyle(
                                                color: AppColors.locationTextFieldBlackColor,
                                                fontFamily: FontFamilies.jFlat,
                                                fontWeight: FontWeight.w400,
                                                fontSize: Dimensions.font16/1.3
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: context.height*0.0215,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.048,),
                                            Text(AppStrings.egp20,
                                              style: TextStyle(
                                                  color: AppColors.textRedColor,
                                                  fontFamily: FontFamilies.almarai,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: Dimensions.font16
                                              ),
                                            ),
                                            SizedBox(width: context.width*0.093,),
                                            Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    SizedBox(height: context.height*0.002,),
                                                    Text(AppStrings.egp29,
                                                      style: TextStyle(
                                                          color: AppColors.locationTextFieldBlackColor,
                                                          fontFamily: FontFamilies.almarai,
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: Dimensions.font16/1.25
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    SizedBox(height: context.height*0.0111,),
                                                    Container(
                                                      width: context.width*0.07,
                                                      height: context.height*0.001, // Thickness of the line
                                                      color: AppColors.locationTextFieldBlackColor, // Color of the line
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ///Tripia A
                        Column(
                          children: [
                            SizedBox(height: context.height*0.108,),
                            Row(
                              children: [
                                SizedBox(width: context.width*0.05,),
                                InkWell(
                                  onTap:(){
                                    setState(() {
                                      widget.isRed1=false;
                                      widget.isRed2=true;
                                    });
                                  },
                                  child: Container(
                                    width: context.width*0.43,
                                    height: context.height*0.2,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:widget.isRed1==false && widget
                                              .isRed2==true? AppColors.primaryColor:AppColors.transparent,
                                      ),
                                      color: AppColors.notesTextFieldColor,
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey, // Shadow color
                                          blurRadius: 1,     // Spread of the shadow
                                          offset: Offset(0, 1), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: context.height*0.02,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.02,),
                                            SvgPicture.asset(AppAssets.carIcon),
                                            SizedBox(width: context.width*0.135,),
                                            if(widget.isRed1==false && widget
                                                .isRed2==true)
                                            SvgPicture.asset(AppAssets.trueRedSign),
                                          ],
                                        ),
                                        SizedBox(height: context.height*0.01,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.04,),
                                            Text(AppStrings.tripiaA,
                                              style: TextStyle(
                                                  color:AppColors.textColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: FontFamilies.almarai,
                                                  fontSize: Dimensions.font16*1.1
                                              ),
                                            ),
                                            SizedBox(width: context.width*0.01,),
                                            Column(
                                              children: [
                                                SizedBox(height: context.height*0.006,),
                                                Text(AppStrings.fourCars,
                                                  style: TextStyle(
                                                      color:AppColors.locationTextFieldBlackColor,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: FontFamilies.jFlat,
                                                      fontSize: Dimensions.font16/1.34
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: context.height*0.008,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.048,),
                                            Text(AppStrings.away500M,
                                              style: TextStyle(
                                                  color: AppColors.locationTextFieldBlackColor,
                                                  fontFamily: FontFamilies.jFlat,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: Dimensions.font16/1.3
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: context.height*0.0215,),
                                        Row(
                                          children: [
                                            SizedBox(width: context.width*0.048,),
                                            Text(AppStrings.egp2970,
                                              style: TextStyle(
                                                  color: AppColors.textRedColor,
                                                  fontFamily: FontFamilies.almarai,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: Dimensions.font16
                                              ),
                                            ),
                                            SizedBox(width: context.width*0.093,),
                                            Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    SizedBox(height: context.height*0.002,),
                                                    Text(AppStrings.egp39,
                                                      style: TextStyle(
                                                          color: AppColors.locationTextFieldBlackColor,
                                                          fontFamily: FontFamilies.almarai,
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: Dimensions.font16/1.25
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    SizedBox(height: context.height*0.0111,),
                                                    Container(
                                                      width: context.width*0.07,
                                                      height: context.height*0.001, // Thickness of the line
                                                      color: AppColors.locationTextFieldBlackColor, // Color of the line
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: context.height*0.34,),
                        Row(
                          children: [
                            SizedBox(width: context.width*0.782,),
                            Text(AppStrings.whatTheDifference,style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: FontFamilies.jFlat,
                              decoration: TextDecoration.underline,
                            ),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: context.height*0.39,),
                        Row(
                          children: [
                            SizedBox(width: context.width*0.085,),
                            MyButtonComp(onTap: () {
                              Navigator.pushReplacement(context, PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 540),
                                  child: BestDriver()));
                            }, text: AppStrings.completeWithTripiaA,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
