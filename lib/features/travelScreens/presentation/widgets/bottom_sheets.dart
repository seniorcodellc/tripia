import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tripia_user/features/travelScreens/presentation/widgets/text_feilds.dart';

import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';

import '../../../../core/widgets/dimensions.dart';
import 'buttons.dart';

class PassengersBottomSheet extends StatefulWidget {
  const PassengersBottomSheet({Key? key}) : super(key: key);

  @override
  State<PassengersBottomSheet> createState() => _PassengersBottomSheetState();
}

class _PassengersBottomSheetState extends State<PassengersBottomSheet> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.65,
      child: Column(
        children: [
          SizedBox(
            height: context.height * 0.28,
          ),
          Row(
            children: [
              Container(
                width: context.width * 0.998,
                height: context.height * 0.37,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(20.0), // Adjust the radius as needed
                    topRight:
                        Radius.circular(20.0), // Adjust the radius as needed
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.06,
                    ),
                    SvgPicture.asset(
                      AppAssets.greyRectangle,
                      width: context.width * 0.33,
                    ),
                    SizedBox(
                      height: context.height * 0.016,
                    ),
                    Text(
                      AppStrings.noOfPassengers,
                      style: TextStyle(
                          fontFamily: FontFamilies.almarai,
                          fontWeight: FontWeight.w700,
                          fontSize: Dimensions.font26 / 1.3),
                    ),
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: context.width * 0.8,
                            height: context.height * 0.075,
                            decoration: BoxDecoration(
                              color: AppColors.notesTextFieldColor,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                            ),
                            child: Center(
                                child: Text(
                              "$count",
                              style: TextStyle(
                                  fontSize: Dimensions.font26 * 1.1,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: FontFamilies.almarai),
                            )),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: context.width * 0.093,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  count--;
                                });
                              },
                              child: Container(
                                width: context.width * 0.28,
                                height: context.height * 0.07,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20 * 1.4),
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                      width: context.width * 0.008,
                                    )),
                                child: Center(
                                  child: Text(
                                    AppStrings.minusOne,
                                    style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontSize: Dimensions.font26,
                                        fontFamily: FontFamilies.almarai,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: context.width * 0.25,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              },
                              child: Container(
                                width: context.width * 0.28,
                                height: context.height * 0.07,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20 * 1.4),
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                      width: context.width * 0.008,
                                    )),
                                child: Center(
                                  child: Text(
                                    AppStrings.plusOne,
                                    style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontSize: Dimensions.font26,
                                        fontFamily: FontFamilies.almarai,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: context.width * 0.06,
                        ),
                        MyButtonDone(
                            onTap: () {
                               Navigator.pop(context);
                            },
                            text: AppStrings.done),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PlaceBottomSheet extends StatefulWidget {
  final String? city;
  final String? address;
  const PlaceBottomSheet({Key? key, required this.city, required this.address}) : super(key: key);

  @override
  State<PlaceBottomSheet> createState() => _PlaceBottomSheetState();
}

class _PlaceBottomSheetState extends State<PlaceBottomSheet> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height*0.65,
      child: Column(
        children: [
          SizedBox(height: context.height*0.02,),
          Row(
            children: [
              Container(
                width: context.width*0.998,
                height: context.height*0.63,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),  // Adjust the radius as needed
                    topRight: Radius.circular(20.0), // Adjust the radius as needed
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: context.height*0.025,),
                    SvgPicture.asset(AppAssets.greyRectangle,width: context.width*0.36,),
                    SizedBox(height: context.height*0.016,),
                    Text(AppStrings.meetingPlace,style: TextStyle(
                        fontFamily: FontFamilies.almarai,
                        fontWeight: FontWeight.w700,fontSize: Dimensions.font26/1.2),),
                    SizedBox(height: context.height*0.02,),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.8,),
                        Text(AppStrings.city,style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamilies.jFlat,
                            fontSize: Dimensions.font20/1.06
                        ),),
                      ],
                    ),
                    SizedBox(height: context.height*0.01,),
                     MyTextFieldTravel2(
                      controller: controller1,
                      hintText: AppStrings.mansoura, obsecureText: false,suffixicon: Icon(
                      Icons.location_on,

                    ),),
                    SizedBox(height: context.height*0.04,),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.8,),
                        Text(AppStrings.address,style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: FontFamilies.jFlat,
                            fontSize: Dimensions.font20/1.06
                        ),),
                      ],
                    ),
                    SizedBox(height: context.height*0.01,),
                     MyTextFieldTravel2(
                       controller: controller2,
                       hintText: AppStrings.ahmedMaher2, obsecureText: false,suffixicon: Icon(
                      Icons.location_on,
                    ),),
                    SizedBox(height: context.height*0.18),
                    Row(
                      children: [
                        SizedBox(width: context.width*0.07,),
                        MyButtonDone(onTap: (){
                          setState(() {
                            //controller1.text=widget.city;
                            //controller2.text=widget.address;
                          });
                          Navigator.pop(context);
                        }, text: AppStrings.done),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
