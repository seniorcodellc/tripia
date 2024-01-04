import 'package:flutter/cupertino.dart';
import 'package:tripia_user/core/app_export.dart';


class ReadyTrip extends StatelessWidget {
  const ReadyTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: context.width*0.91,
            height:context.height*0.41,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color:AppColors.notesTextFieldColor
            ),
            child: Column(
              children: [
                SizedBox(height: context.height*0.03,),
                Row(
                  children: [
                    SizedBox(width:context.width*0.18),
                    Text(AppStrings.to,
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Dimensions.font16/1.2,
                        color: AppColors.locationTextFieldBlackColor,
                        fontFamily: FontFamilies.jFlat,
                      ),
                    ),
                    SizedBox(width:context.width*0.58),
                    Text(AppStrings.from,
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Dimensions.font16/1.2,
                        color: AppColors.locationTextFieldBlackColor,
                        fontFamily: FontFamilies.jFlat,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.height*0.01,),
                Row(
                  children: [
                    SizedBox(width: context.width*0.035,),
                    Text(AppStrings.elhaiElsabe3,
                      style: TextStyle(
                          fontFamily: FontFamilies.almarai,
                          fontWeight: FontWeight.w700,
                          fontSize: Dimensions.font20/1.2
                      ),
                    ),
                    SizedBox(width: context.width*0.01,),
                    SvgPicture.asset(AppAssets.readyTripCar,width: context.width*0.432,),
                    SizedBox(width: context.width*0.01,),
                    Text(AppStrings.ahmedMaher2,
                    style: TextStyle(
                      fontFamily: FontFamilies.almarai,
                      fontWeight: FontWeight.w700,
                      fontSize: Dimensions.font20/1.2
                    ),
                    ),
                  ],
                ),
                SizedBox(height: context.height*0.01,),
                Row(
                  children: [
                    Text(AppStrings.mansoura2),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
