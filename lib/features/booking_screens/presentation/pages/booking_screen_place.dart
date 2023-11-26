import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';
import '../../../../core/widgets/text_field.dart';
import '../widgets/textfields.dart';
import 'booking_screen_destination.dart';


class BookingScreenPlace extends StatelessWidget {
  const BookingScreenPlace({Key? key}) : super(key: key);

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
                Row(
                  children: [
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
                          Text(AppStrings.meetingPlace,style: TextStyle(
                              fontFamily: FontFamilies.almarai,
                              fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.1),),
                          SizedBox(height: context.height*0.02,),
                          MyTextField6(hintText: AppStrings.whereDoYouWantToMeat, obsecureText: false,suffixicon: Icon(CupertinoIcons.search),),
                          SizedBox(height: context.height*0.015,),
                          Row(
                            children: [
                              SizedBox(width: context.width*0.54,),
                              Text(AppStrings.displayOnMap,style: TextStyle(
                                  color: AppColors.primaryColor,fontSize: Dimensions.font20/1.17,fontWeight: FontWeight.w400,fontFamily: FontFamilies.almarai),),
                              SvgPicture.asset(AppAssets.locationRedIcon,width: context.width*0.09,),
                            ],
                          ),
                          SizedBox(height: context.height*0.14,),
                          InkWell(
                              onTap: (){
                                Navigator.push(context, PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 550),
                                    child: BookingScreenDestination()));
                              },
                              child: Text(AppStrings.didNotFoundAnyResult,style: TextStyle(fontSize: Dimensions.font20/1.16,color: AppColors.iconPrefixColor,fontWeight: FontWeight.w400,fontFamily: FontFamilies.almarai),)),
                        ],
                      ),
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
