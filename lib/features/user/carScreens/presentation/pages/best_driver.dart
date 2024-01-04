import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripia_user/core/app_export.dart';



class BestDriver extends StatefulWidget {
  const BestDriver({Key? key}) : super(key: key);

  @override
  State<BestDriver> createState() => _BestDriverState();
}

class _BestDriverState extends State<BestDriver> {
  void _showCancelBottomSheet (){
    showModalBottomSheet(
      backgroundColor: AppColors.transparent,
      isScrollControlled: true,
        context: context,
        builder: (context) => Column(
          children: [
            SizedBox(height: context.height*0.666 ,),
            Stack(
              children: [
                Row(
                  children: [
                    Container(
                      width: context.width*0.998,
                      height: context.height*0.334,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20*1.3),
                          topLeft: Radius.circular(Dimensions.radius20*1.3),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: context.height*0.025,),
                          SvgPicture.asset(AppAssets.greyRectangle,width: context.width*0.36,),
                          SizedBox(height: context.height*0.016,),
                          Text(AppStrings.sureWannaCancel,style: TextStyle(
                              fontFamily: FontFamilies.almarai,
                              fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.4),),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: context.height*0.115,),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.1,),
                        Text(AppStrings.sureWannaCancelText,style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamilies.jFlat,
                            color: AppColors.locationTextFieldBlackColor,
                            fontSize: Dimensions.font16/1.1
                        ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    SizedBox(height: context.height*0.077,),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.03,),
                        MyButtonTripCancel(
                            onTap: (){
                              Navigator.push(context, PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 550),
                                  child: TravelScreen()));
                            },
                            text: AppStrings.cancelTrip),
                        SizedBox(width: context.width*0.08,),
                        MyButtonTripSave(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            text: AppStrings.waitForTheDriver
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
    );
  }

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
                SizedBox(height: context.height*0.6,),
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: context.width*0.998,
                          height: context.height*0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20*1.3),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: context.height*0.025,),
                              SvgPicture.asset(AppAssets.greyRectangle,width: context.width*0.36,),
                              SizedBox(height: context.height*0.016,),
                              Text(AppStrings.foundingTheBestDriverForYou,style: TextStyle(
                                  fontFamily: FontFamilies.almarai,
                                  fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.3),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Center(child: Container(
                        height: context.height*0.28,
                        child: SvgPicture.asset(AppAssets.car,width: context.width*0.92))),
                    Column(
                      children: [
                        SizedBox(height: context.height*0.19,),
                        Row(
                          children: [
                            SizedBox(width: context.width*0.045),
                            Text(AppStrings.egp2970,style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: FontFamilies.jFlat,
                                fontSize: Dimensions.font16/1.04,
                                color: AppColors.primaryColor
                            ),),
                            SizedBox(width: context.width*0.162,),
                            Text(AppStrings.abdelrahmanAhmedMaher,style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: FontFamilies.jFlat,
                                fontSize: Dimensions.font16/1.04,
                                color: AppColors.locationTextFieldBlackColor
                            ),),
                            Text(AppStrings.theDestination2,style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: FontFamilies.almarai,
                              fontSize: Dimensions.font16*1.01
                            ),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: context.height*0.34,),
                        Row(
                          children: [
                            SizedBox(width: context.width*0.07,),
                            InkWell(
                              onTap: (){
                                _showCancelBottomSheet();
                              },
                              child: Text(AppStrings.cancelRequest,style: TextStyle(
                                color: AppColors.primaryColor,
                                fontFamily: FontFamilies.almarai,
                                fontWeight: FontWeight.w700,
                                fontSize: Dimensions.font16*1.02,
                                decoration: TextDecoration.underline
                              ),),
                            ),
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
