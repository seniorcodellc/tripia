// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:tripia_user/core/app_export.dart';

import '../widgets/ready_trips.dart';

class TravelScreen extends StatefulWidget {
  bool isExclusive = true;
  bool isRed1 = true;
  bool isRed2 = true;
  bool isRed3 = true;
  bool newTrip = true;
  TravelScreen({Key? key}) : super(key: key);

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  String? city1;
  String? address;

  void _updateTextFields(String value1, String value2) {
    setState(() {
      // Update the text fields with the received values
      controller1.text = value1;
      controller2.text = value2;
    });
  }

  void _showBottomSheetPlace() {
    showModalBottomSheet(
        backgroundColor: AppColors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) => PlaceBottomSheet(
              city: city1,
              address: address,
            ));
  }

  void _showBottomSheetDestination() {
    showModalBottomSheet(
        backgroundColor: AppColors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
              height: context.height * 0.65,
              child: Column(
                children: [
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        width: context.width * 0.998,
                        height: context.height * 0.63,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius20), // Adjust the radius as needed
                            topRight: Radius.circular(Dimensions.radius20), // Adjust the radius as needed
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.025,
                            ),
                            SvgPicture.asset(
                              AppAssets.greyRectangle,
                              width: context.width * 0.36,
                            ),
                            SizedBox(
                              height: context.height * 0.016,
                            ),
                            Text(
                              AppStrings.destination,
                              style: TextStyle(
                                  fontFamily: FontFamilies.almarai,
                                  fontWeight: FontWeight.w700,
                                  fontSize: Dimensions.font26 / 1.2),
                            ),
                            SizedBox(
                              height: context.height * 0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.8,
                                ),
                                Text(
                                  AppStrings.city,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamilies.jFlat,
                                      fontSize: Dimensions.font20 / 1.06),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            MyTextFieldTravel2(
                              controller: controller2,
                              hintText: AppStrings.mansoura,
                              obsecureText: false,
                              suffixicon: Icon(
                                Icons.location_on,
                              ),
                            ),
                            SizedBox(
                              height: context.height * 0.04,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.8,
                                ),
                                Text(
                                  AppStrings.address,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamilies.jFlat,
                                      fontSize: Dimensions.font20 / 1.06),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            MyTextFieldTravel2(
                              controller: controller2,
                              hintText: AppStrings.ahmedMaher2,
                              obsecureText: false,
                              suffixicon: Icon(
                                Icons.location_on,
                              ),
                            ),
                            SizedBox(height: context.height * 0.18),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.07,
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
            ));
  }

  void _showBottomSheetNotes() {
    showModalBottomSheet(
        backgroundColor: AppColors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
              height: context.height * 0.65,
              child: Column(
                children: [
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        width: context.width * 0.998,
                        height: context.height * 0.63,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius20), // Adjust the radius as needed
                            topRight: Radius.circular(Dimensions.radius20), // Adjust the radius as needed
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.025,
                            ),
                            SvgPicture.asset(
                              AppAssets.greyRectangle,
                              width: context.width * 0.36,
                            ),
                            SizedBox(
                              height: context.height * 0.016,
                            ),
                            Text(
                              AppStrings.notes2,
                              style: TextStyle(
                                  fontFamily: FontFamilies.almarai,
                                  fontWeight: FontWeight.w700,
                                  fontSize: Dimensions.font26 / 1.2),
                            ),
                            SizedBox(
                              height: context.height * 0.03,
                            ),
                            Container(
                              width: context.width * 0.92,
                              height: context.height * 0.165,
                              padding: EdgeInsets.only(right: context.width * 0.036),
                              decoration: BoxDecoration(
                                color: AppColors.notesTextFieldColor,
                                border: Border.all(
                                  color: Colors.white,
                                  width: context.width * 0.003,
                                ),
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                              ),
                              child: TextFormField(
                                onTap: () {
                                  // _showBottomSheetNotes();
                                },
                                textDirection: TextDirection.rtl,
                                readOnly: false,
                                maxLines: 5,
                                cursorColor: Colors.grey,
                                // Adjust the number of lines as needed (e.g., 3 or 5)
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  hintText: AppStrings.personalThings,
                                  hintStyle: TextStyle(
                                      color: AppColors.hintTextFieldColor,
                                      fontFamily: FontFamilies.jFlat,
                                      fontSize: Dimensions.font20 / 1.35),
                                  border: InputBorder.none, // Remove the default border
                                ),
                              ),
                            ),
                            SizedBox(height: context.height * 0.27),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.07,
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
            ));
  }

  void _showBottomSheetPassengers() {
    showModalBottomSheet(
        backgroundColor: AppColors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) => const PassengersBottomSheet());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            AppStrings.travel,
            style: TextStyle(fontWeight: FontWeight.w700, fontFamily: FontFamilies.almarai, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: context.width * 0.26),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isExclusive = false;
                      });
                    },
                    child: Container(
                      width: context.width * 0.34,
                      height: context.height * 0.054,
                      decoration: BoxDecoration(
                        color: widget.isExclusive == false ? AppColors.primaryColor : AppColors.notesTextFieldColor,
                        borderRadius: BorderRadius.circular(Dimensions.radius20 * 1.25),
                      ),
                      child: Center(
                        child: Text(
                          AppStrings.sharedTrip,
                          style: TextStyle(
                            color: widget.isExclusive == false ? Colors.white : AppColors.iconPrefixColor2,
                            fontSize: Dimensions.font20 / 1.1,
                            fontFamily: FontFamilies.jFlat,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.width * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isExclusive = true;
                      });
                    },
                    child: Container(
                      width: context.width * 0.34,
                      height: context.height * 0.054,
                      decoration: BoxDecoration(
                        color: widget.isExclusive == true ? AppColors.primaryColor : AppColors.notesTextFieldColor,
                        borderRadius: BorderRadius.circular(Dimensions.radius20 * 1.25),
                      ),
                      child: Center(
                        child: Text(
                          AppStrings.exclusiveTrip,
                          style: TextStyle(
                            color: widget.isExclusive == true ? Colors.white : AppColors.iconPrefixColor2,
                            fontSize: Dimensions.font20 / 1.1,
                            fontFamily: FontFamilies.jFlat,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    // child: ,
                    // child: const TabIcon(
                    //   backgroundColor: AppColors.notesTextFieldColor,
                    //   text: AppStrings.sharedTrip,
                    //   textColor:AppColors.iconPrefixColor2 ,
                    // ),
                  ),

                  // const TabIcon(
                  //   backgroundColor: AppColors.primaryColor,
                  //   text: AppStrings.exclusiveTrip,
                  //   textColor:Colors.white ,
                  // ),
                ],
              ),
              SizedBox(
                height: context.height * 0.035,
              ),
              if (widget.isExclusive == true)
                SingleChildScrollView(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.65,
                                ),
                                Text(
                                  AppStrings.meetingPlace,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamilies.jFlat,
                                      color: AppColors.primaryColor,
                                      fontSize: Dimensions.font16 * 1.1),
                                ),
                                SizedBox(
                                  width: context.width * 0.015,
                                ),
                                SvgPicture.asset(
                                  AppAssets.redPointBooking,
                                  width: context.width * 0.07,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.065,
                                ),
                                MyTextFieldTravel(
                                  hintText: AppStrings.ahmedMaherMansoura,
                                  obsecureText: false,
                                  suffixicon: Icon(
                                    Icons.arrow_back_ios,
                                    size: Dimensions.iconSize16 * 1.25,
                                    color: AppColors.locationTextFieldBlackColor,
                                  ),
                                  onTap: () {
                                    _showBottomSheetPlace();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.75,
                                ),
                                Text(
                                  AppStrings.destination,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamilies.jFlat,
                                      color: Colors.yellow,
                                      fontSize: Dimensions.font16 * 1.1),
                                ),
                                SizedBox(
                                  width: context.width * 0.015,
                                ),
                                SvgPicture.asset(
                                  AppAssets.yellowPointBooking,
                                  width: context.width * 0.07,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.065,
                                ),
                                MyTextFieldTravel(
                                  hintText: AppStrings.nasrCityCairo,
                                  obsecureText: false,
                                  suffixicon: Icon(
                                    Icons.arrow_back_ios,
                                    size: Dimensions.iconSize16 * 1.25,
                                    color: AppColors.locationTextFieldBlackColor,
                                  ),
                                  onTap: () {
                                    _showBottomSheetDestination();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.69,
                                ),
                                Text(
                                  AppStrings.noOfPassengers,
                                  style: TextStyle(
                                      fontFamily: FontFamilies.jFlat,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.redBlack,
                                      fontSize: Dimensions.font16 * 1.1),
                                ),
                                SizedBox(
                                  width: context.width * 0.015,
                                ),
                                SvgPicture.asset(
                                  AppAssets.seat,
                                  width: context.width * 0.07,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.065,
                                ),
                                MyTextFieldTravel(
                                  hintText: AppStrings.noThree,
                                  obsecureText: false,
                                  suffixicon: Icon(
                                    Icons.arrow_back_ios,
                                    size: Dimensions.iconSize16 * 1.25,
                                    color: AppColors.locationTextFieldBlackColor,
                                  ),
                                  onTap: () {
                                    _showBottomSheetPassengers();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.597,
                                ),
                                Text(
                                  AppStrings.chooseCarType,
                                  style: TextStyle(
                                      fontFamily: FontFamilies.jFlat,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blackColor2,
                                      fontSize: Dimensions.font16 * 1.1),
                                ),
                                SizedBox(
                                  width: context.width * 0.015,
                                ),
                                SvgPicture.asset(
                                  AppAssets.carTypeIcon,
                                  width: context.width * 0.07,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.045,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.074,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widget.isRed1 = true;
                                      widget.isRed2 = false;
                                    });
                                  },
                                  child: Container(
                                    width: context.width * 0.87,
                                    height: context.height * 0.115,
                                    decoration: BoxDecoration(
                                      color: AppColors.notesTextFieldColor,
                                      border: Border.all(
                                        color: widget.isRed1 == true && widget.isRed2 == false
                                            ? AppColors.primaryColor
                                            : AppColors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.grey, // Shadow color
                                          blurRadius: 1, // Spread of the shadow
                                          offset: Offset(0, 1), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: context.width * 0.05,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: context.height * 0.032,
                                            ),
                                            if (widget.isRed1 == true && widget.isRed2 == false)
                                              SvgPicture.asset(AppAssets.trueRedSign),
                                          ],
                                        ),
                                        SizedBox(
                                          width: context.width * 0.267,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: context.height * 0.025,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: context.width * 0.1,
                                                ),
                                                Text(
                                                  AppStrings.tripiaA,
                                                  style: TextStyle(
                                                      color: AppColors.textColor,
                                                      fontWeight: FontWeight.w700,
                                                      fontFamily: FontFamilies.almarai,
                                                      fontSize: Dimensions.font16 * 1.1),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: context.height * 0.02,
                                            ),
                                            Row(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: context.height * 0.002,
                                                        ),
                                                        Text(
                                                          AppStrings.egp39,
                                                          style: TextStyle(
                                                              color: AppColors.locationTextFieldBlackColor,
                                                              fontFamily: FontFamilies.almarai,
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: Dimensions.font16 / 1.25),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: context.height * 0.0111,
                                                        ),
                                                        Container(
                                                          width: context.width * 0.07,
                                                          height: context.height * 0.001, // Thickness of the line
                                                          color: AppColors
                                                              .locationTextFieldBlackColor, // Color of the line
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: context.width * 0.02,
                                                ),
                                                Text(
                                                  AppStrings.egp2970,
                                                  style: TextStyle(
                                                      color: AppColors.textRedColor,
                                                      fontFamily: FontFamilies.almarai,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: Dimensions.font16),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: context.width * 0.03,
                                        ),
                                        SvgPicture.asset(AppAssets.carIcon),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.03,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.074,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widget.isRed1 = false;
                                      widget.isRed2 = true;
                                    });
                                  },
                                  child: Container(
                                    width: context.width * 0.87,
                                    height: context.height * 0.115,
                                    decoration: BoxDecoration(
                                      color: AppColors.notesTextFieldColor,
                                      border: Border.all(
                                        color: widget.isRed1 == false && widget.isRed2 == true
                                            ? AppColors.primaryColor
                                            : AppColors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.grey, // Shadow color
                                          blurRadius: 1, // Spread of the shadow
                                          offset: const Offset(0, 1), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: context.width * 0.05,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: context.height * 0.032,
                                            ),
                                            if (widget.isRed1 == false && widget.isRed2 == true)
                                              SvgPicture.asset(AppAssets.trueRedSign),
                                          ],
                                        ),
                                        SizedBox(
                                          width: context.width * 0.267,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: context.height * 0.025,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: context.width * 0.1,
                                                ),
                                                Text(
                                                  AppStrings.tripiaB,
                                                  style: TextStyle(
                                                      color: AppColors.textColor,
                                                      fontWeight: FontWeight.w700,
                                                      fontFamily: FontFamilies.almarai,
                                                      fontSize: Dimensions.font16 * 1.1),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: context.height * 0.02,
                                            ),
                                            Row(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: context.height * 0.002,
                                                        ),
                                                        Text(
                                                          AppStrings.egp39,
                                                          style: TextStyle(
                                                              color: AppColors.locationTextFieldBlackColor,
                                                              fontFamily: FontFamilies.almarai,
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: Dimensions.font16 / 1.25),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: context.height * 0.0111,
                                                        ),
                                                        Container(
                                                          width: context.width * 0.07,
                                                          height: context.height * 0.001, // Thickness of the line
                                                          color: AppColors
                                                              .locationTextFieldBlackColor, // Color of the line
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: context.width * 0.02,
                                                ),
                                                Text(
                                                  AppStrings.egp20,
                                                  style: TextStyle(
                                                      color: AppColors.textRedColor,
                                                      fontFamily: FontFamilies.almarai,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: Dimensions.font16),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: context.width * 0.03,
                                        ),
                                        SvgPicture.asset(AppAssets.carIcon),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.06,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.8,
                                ),
                                Text(
                                  AppStrings.notes2,
                                  style: TextStyle(
                                      fontFamily: FontFamilies.jFlat,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: Dimensions.font16 * 1.1),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            Container(
                              width: context.width * 0.89,
                              height: context.height * 0.165,
                              padding: EdgeInsets.only(right: context.width * 0.036),
                              decoration: BoxDecoration(
                                color: AppColors.notesTextFieldColor,
                                border: Border.all(
                                  color: Colors.white,
                                  width: context.width * 0.003,
                                ),
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                              ),
                              child: TextFormField(
                                onTap: () {
                                  _showBottomSheetNotes();
                                },
                                textDirection: TextDirection.rtl,
                                readOnly: false,
                                maxLines: 5,
                                cursorColor: Colors.grey,
                                // Adjust the number of lines as needed (e.g., 3 or 5)
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  hintText: AppStrings.personalThings,
                                  hintStyle: TextStyle(
                                      color: AppColors.hintTextFieldColor,
                                      fontFamily: FontFamilies.jFlat,
                                      fontSize: Dimensions.font20 / 1.35),
                                  border: InputBorder.none, // Remove the default border
                                ),
                              ),
                            ),
                            SizedBox(
                              height: context.height * 0.02,
                            ),
                            MyButtonTravel(
                              onTap: () {
                                // Navigator.pushReplacement(context, PageTransition(
                                //     type: PageTransitionType.fade,
                                //     duration: Duration(milliseconds: 540),
                                //     child: BestDriver()));
                              },
                              text: AppStrings.searchForTheCar2,
                            ),
                            SizedBox(
                              height: context.height * 0.03,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: context.height * 0.028,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: context.width * 0.928,
                              ),
                              Container(height: context.height * 0.11, child: SvgPicture.asset(AppAssets.lineBooking)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: context.height * 0.16,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: context.width * 0.93,
                              ),
                              Container(height: context.height * 0.11, child: SvgPicture.asset(AppAssets.lineBooking)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: context.height * 0.28,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: context.width * 0.93,
                              ),
                              Container(height: context.height * 0.11, child: SvgPicture.asset(AppAssets.lineBooking)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (widget.isExclusive == false)
                SingleChildScrollView(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.48,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.newTrip = false;
                                    });
                                  },
                                  child: Text(
                                    AppStrings.readyTrips,
                                    style: TextStyle(
                                        color: widget.newTrip == false
                                            ? AppColors.textRedColor
                                            : AppColors.iconPrefixColor2,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: FontFamilies.jFlat,
                                        fontSize: Dimensions.font16 * 1.1),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.04,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.newTrip = true;
                                    });
                                  },
                                  child: Text(
                                    AppStrings.newTrips,
                                    style: TextStyle(
                                        color: widget.newTrip == true
                                            ? AppColors.textRedColor
                                            : AppColors.iconPrefixColor2,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: FontFamilies.jFlat,
                                        fontSize: Dimensions.font16 * 1.1),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.016,
                            ),
                            if (widget.newTrip == true)
                              Row(
                                children: [
                                  SizedBox(
                                    width: context.width * 0.745,
                                  ),
                                  Container(
                                    width: context.width * 0.2,
                                    height: context.height * 0.005,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                    ),
                                  ),
                                ],
                              ),
                            if (widget.newTrip == false)
                              Row(
                                children: [
                                  SizedBox(
                                    width: context.width * 0.48,
                                  ),
                                  Container(
                                    width: context.width * 0.23,
                                    height: context.height * 0.005,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                    ),
                                  ),
                                ],
                              ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.lineTravel,
                                  width: context.width * 0.95,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.017,
                            ),
                            //////////////////////////
                            if (widget.newTrip == true)
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.65,
                                      ),
                                      Text(
                                        AppStrings.meetingPlace,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: FontFamilies.jFlat,
                                            color: AppColors.primaryColor,
                                            fontSize: Dimensions.font16 * 1.1),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.015,
                                      ),
                                      SvgPicture.asset(
                                        AppAssets.redPointBooking,
                                        width: context.width * 0.07,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.065,
                                      ),
                                      MyTextFieldTravel(
                                        hintText: AppStrings.ahmedMaherMansoura,
                                        obsecureText: false,
                                        suffixicon: Icon(
                                          Icons.arrow_back_ios,
                                          size: Dimensions.iconSize16 * 1.25,
                                          color: AppColors.locationTextFieldBlackColor,
                                        ),
                                        onTap: () {
                                          _showBottomSheetPlace();
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.75,
                                      ),
                                      Text(
                                        AppStrings.destination,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: FontFamilies.jFlat,
                                            color: Colors.yellow,
                                            fontSize: Dimensions.font16 * 1.1),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.015,
                                      ),
                                      SvgPicture.asset(
                                        AppAssets.yellowPointBooking,
                                        width: context.width * 0.07,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.065,
                                      ),
                                      MyTextFieldTravel(
                                        hintText: AppStrings.nasrCityCairo,
                                        obsecureText: false,
                                        suffixicon: Icon(
                                          Icons.arrow_back_ios,
                                          size: Dimensions.iconSize16 * 1.25,
                                          color: AppColors.locationTextFieldBlackColor,
                                        ),
                                        onTap: () {
                                          _showBottomSheetDestination();
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.69,
                                      ),
                                      Text(
                                        AppStrings.noOfPassengers,
                                        style: TextStyle(
                                            fontFamily: FontFamilies.jFlat,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.redBlack,
                                            fontSize: Dimensions.font16 * 1.1),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.015,
                                      ),
                                      SvgPicture.asset(
                                        AppAssets.seat,
                                        width: context.width * 0.07,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.065,
                                      ),
                                      MyTextFieldTravel(
                                        hintText: AppStrings.noThree,
                                        obsecureText: false,
                                        suffixicon: Icon(
                                          Icons.arrow_back_ios,
                                          size: Dimensions.iconSize16 * 1.25,
                                          color: AppColors.locationTextFieldBlackColor,
                                        ),
                                        onTap: () {
                                          _showBottomSheetPassengers();
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.597,
                                      ),
                                      Text(
                                        AppStrings.chooseCarType,
                                        style: TextStyle(
                                            fontFamily: FontFamilies.jFlat,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.blackColor2,
                                            fontSize: Dimensions.font16 * 1.1),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.015,
                                      ),
                                      SvgPicture.asset(
                                        AppAssets.carTypeIcon,
                                        width: context.width * 0.07,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.045,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.074,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            widget.isRed1 = true;
                                            widget.isRed2 = false;
                                            widget.isRed3 = false;
                                          });
                                        },
                                        child: Container(
                                          width: context.width * 0.87,
                                          height: context.height * 0.115,
                                          decoration: BoxDecoration(
                                            color: AppColors.notesTextFieldColor,
                                            border: Border.all(
                                              color: widget.isRed1 == true &&
                                                      widget.isRed2 == false &&
                                                      widget.isRed3 == false
                                                  ? AppColors.primaryColor
                                                  : AppColors.transparent,
                                            ),
                                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                                            boxShadow: [
                                              const BoxShadow(
                                                color: Colors.grey, // Shadow color
                                                blurRadius: 1, // Spread of the shadow
                                                offset: Offset(0, 1), // Offset of the shadow
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: context.width * 0.05,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: context.height * 0.032,
                                                  ),
                                                  if (widget.isRed1 == true &&
                                                      widget.isRed2 == false &&
                                                      widget.isRed3 == false)
                                                    SvgPicture.asset(AppAssets.trueRedSign),
                                                ],
                                              ),
                                              SizedBox(
                                                width: context.width * 0.267,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: context.height * 0.025,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: context.width * 0.1,
                                                      ),
                                                      Text(
                                                        AppStrings.tripiaA,
                                                        style: TextStyle(
                                                            color: AppColors.textColor,
                                                            fontWeight: FontWeight.w700,
                                                            fontFamily: FontFamilies.almarai,
                                                            fontSize: Dimensions.font16 * 1.1),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: context.height * 0.02,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Column(
                                                            children: [
                                                              SizedBox(
                                                                height: context.height * 0.002,
                                                              ),
                                                              Text(
                                                                AppStrings.egp39,
                                                                style: TextStyle(
                                                                    color: AppColors.locationTextFieldBlackColor,
                                                                    fontFamily: FontFamilies.almarai,
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: Dimensions.font16 / 1.25),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              SizedBox(
                                                                height: context.height * 0.0111,
                                                              ),
                                                              Container(
                                                                width: context.width * 0.07,
                                                                height: context.height * 0.001, // Thickness of the line
                                                                color: AppColors
                                                                    .locationTextFieldBlackColor, // Color of the line
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: context.width * 0.02,
                                                      ),
                                                      Text(
                                                        AppStrings.egp2970,
                                                        style: TextStyle(
                                                            color: AppColors.textRedColor,
                                                            fontFamily: FontFamilies.almarai,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: Dimensions.font16),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: context.width * 0.03,
                                              ),
                                              SvgPicture.asset(AppAssets.carIcon),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.03,
                                  ),
                                  //TripiaBus
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.074,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            widget.isRed1 = false;
                                            widget.isRed2 = true;
                                            widget.isRed3 = false;
                                          });
                                        },
                                        child: Container(
                                          width: context.width * 0.87,
                                          height: context.height * 0.115,
                                          decoration: BoxDecoration(
                                            color: AppColors.notesTextFieldColor,
                                            border: Border.all(
                                              color: widget.isRed1 == false &&
                                                      widget.isRed2 == true &&
                                                      widget.isRed3 == false
                                                  ? AppColors.primaryColor
                                                  : AppColors.transparent,
                                            ),
                                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                                            boxShadow: [
                                              const BoxShadow(
                                                color: Colors.grey, // Shadow color
                                                blurRadius: 1, // Spread of the shadow
                                                offset: const Offset(0, 1), // Offset of the shadow
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: context.width * 0.05,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: context.height * 0.032,
                                                  ),
                                                  if (widget.isRed1 == false &&
                                                      widget.isRed2 == true &&
                                                      widget.isRed3 == false)
                                                    SvgPicture.asset(AppAssets.trueRedSign),
                                                ],
                                              ),
                                              SizedBox(
                                                width: context.width * 0.267,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: context.height * 0.025,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: context.width * 0.1,
                                                      ),
                                                      Text(
                                                        AppStrings.tripiaB,
                                                        style: TextStyle(
                                                            color: AppColors.textColor,
                                                            fontWeight: FontWeight.w700,
                                                            fontFamily: FontFamilies.almarai,
                                                            fontSize: Dimensions.font16 * 1.1),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: context.height * 0.02,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Column(
                                                            children: [
                                                              SizedBox(
                                                                height: context.height * 0.002,
                                                              ),
                                                              Text(
                                                                AppStrings.egp39,
                                                                style: TextStyle(
                                                                    color: AppColors.locationTextFieldBlackColor,
                                                                    fontFamily: FontFamilies.almarai,
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: Dimensions.font16 / 1.25),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              SizedBox(
                                                                height: context.height * 0.0111,
                                                              ),
                                                              Container(
                                                                width: context.width * 0.07,
                                                                height: context.height * 0.001, // Thickness of the line
                                                                color: AppColors
                                                                    .locationTextFieldBlackColor, // Color of the line
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: context.width * 0.02,
                                                      ),
                                                      Text(
                                                        AppStrings.egp20,
                                                        style: TextStyle(
                                                            color: AppColors.textRedColor,
                                                            fontFamily: FontFamilies.almarai,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: Dimensions.font16),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: context.width * 0.03,
                                              ),
                                              SvgPicture.asset(AppAssets.carIcon),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.03,
                                  ),
                                  //TripiaBus
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.074,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            widget.isRed1 = false;
                                            widget.isRed2 = false;
                                            widget.isRed3 = true;
                                          });
                                        },
                                        child: Container(
                                          width: context.width * 0.87,
                                          height: context.height * 0.115,
                                          decoration: BoxDecoration(
                                            color: AppColors.notesTextFieldColor,
                                            border: Border.all(
                                              color: widget.isRed1 == false &&
                                                      widget.isRed2 == false &&
                                                      widget.isRed3 == true
                                                  ? AppColors.primaryColor
                                                  : AppColors.transparent,
                                            ),
                                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                                            boxShadow: [
                                              const BoxShadow(
                                                color: Colors.grey, // Shadow color
                                                blurRadius: 1, // Spread of the shadow
                                                offset: const Offset(0, 1), // Offset of the shadow
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: context.width * 0.05,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: context.height * 0.032,
                                                  ),
                                                  if (widget.isRed1 == false &&
                                                      widget.isRed2 == false &&
                                                      widget.isRed3 == true)
                                                    SvgPicture.asset(AppAssets.trueRedSign),
                                                ],
                                              ),
                                              SizedBox(
                                                width: context.width * 0.267,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: context.height * 0.025,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: context.width * 0.1,
                                                      ),
                                                      Text(
                                                        AppStrings.tripiaBus,
                                                        style: TextStyle(
                                                            color: AppColors.textColor,
                                                            fontWeight: FontWeight.w700,
                                                            fontFamily: FontFamilies.almarai,
                                                            fontSize: Dimensions.font16 * 1.1),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: context.height * 0.02,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Column(
                                                            children: [
                                                              SizedBox(
                                                                height: context.height * 0.002,
                                                              ),
                                                              Text(
                                                                AppStrings.egp39,
                                                                style: TextStyle(
                                                                    color: AppColors.locationTextFieldBlackColor,
                                                                    fontFamily: FontFamilies.almarai,
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: Dimensions.font16 / 1.25),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              SizedBox(
                                                                height: context.height * 0.0111,
                                                              ),
                                                              Container(
                                                                width: context.width * 0.07,
                                                                height: context.height * 0.001, // Thickness of the line
                                                                color: AppColors
                                                                    .locationTextFieldBlackColor, // Color of the line
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: context.width * 0.02,
                                                      ),
                                                      Text(
                                                        AppStrings.egp20,
                                                        style: TextStyle(
                                                            color: AppColors.textRedColor,
                                                            fontFamily: FontFamilies.almarai,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: Dimensions.font16),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: context.width * 0.03,
                                              ),
                                              SvgPicture.asset(AppAssets.busIcon),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.06,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: context.width * 0.8,
                                      ),
                                      Text(
                                        AppStrings.notes2,
                                        style: TextStyle(
                                            fontFamily: FontFamilies.jFlat,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: Dimensions.font16 * 1.1),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Container(
                                    width: context.width * 0.89,
                                    height: context.height * 0.165,
                                    padding: EdgeInsets.only(right: context.width * 0.036),
                                    decoration: BoxDecoration(
                                      color: AppColors.notesTextFieldColor,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: context.width * 0.003,
                                      ),
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                    ),
                                    child: TextFormField(
                                      onTap: () {
                                        _showBottomSheetNotes();
                                      },
                                      textDirection: TextDirection.rtl,
                                      readOnly: false,
                                      maxLines: 5,
                                      cursorColor: Colors.grey,
                                      // Adjust the number of lines as needed (e.g., 3 or 5)
                                      decoration: InputDecoration(
                                        hintTextDirection: TextDirection.rtl,
                                        hintText: AppStrings.personalThings,
                                        hintStyle: TextStyle(
                                            color: AppColors.hintTextFieldColor,
                                            fontFamily: FontFamilies.jFlat,
                                            fontSize: Dimensions.font20 / 1.35),
                                        border: InputBorder.none, // Remove the default border
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  MyButtonTravel(
                                    onTap: () {
                                      // Navigator.pushReplacement(context, PageTransition(
                                      //     type: PageTransitionType.fade,
                                      //     duration: Duration(milliseconds: 540),
                                      //     child: BestDriver()));
                                    },
                                    text: AppStrings.searchForTheCar2,
                                  ),
                                  SizedBox(
                                    height: context.height * 0.03,
                                  ),
                                ],
                              ),
                            if (widget.newTrip == false) ReadyTrip(),
                          ],
                        ),
                      ),
                      if (widget.newTrip == true)
                        Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.09,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.928,
                                ),
                                Container(
                                    height: context.height * 0.11, child: SvgPicture.asset(AppAssets.lineBooking)),
                              ],
                            ),
                          ],
                        ),
                      if (widget.newTrip == true)
                        Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.225,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.93,
                                ),
                                Container(
                                    height: context.height * 0.11, child: SvgPicture.asset(AppAssets.lineBooking)),
                              ],
                            ),
                          ],
                        ),
                      if (widget.newTrip == true)
                        Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.35,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: context.width * 0.93,
                                ),
                                Container(
                                    height: context.height * 0.11, child: SvgPicture.asset(AppAssets.lineBooking)),
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ));
  }
}
