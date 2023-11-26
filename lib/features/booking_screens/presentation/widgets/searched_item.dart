import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';

class SearchedItem extends StatelessWidget {
  const SearchedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: context.width*0.09,),
            Text(AppStrings.kms,style: TextStyle(
                fontFamily: FontFamilies.almarai,
                fontWeight: FontWeight.w400,
                fontSize: Dimensions.font16/1.2,
                color: AppColors.locationTextFieldBlackColor
            ),),
            SizedBox(width: context.width*0.01,),
            Text(AppStrings.km568,style: TextStyle(
                fontFamily: FontFamilies.almarai,
                fontWeight: FontWeight.w400,
                fontSize: Dimensions.font16/1.2,
                color: AppColors.locationTextFieldBlackColor
            ),),
            SizedBox(width: context.width*0.56,),
            Text(AppStrings.ebadElrahman,style: TextStyle(
                fontFamily: FontFamilies.almarai,
                fontWeight: FontWeight.w400,
                fontSize: Dimensions.font16,
                color: AppColors.locationTextFieldBlackColor
            ),),
          ],
        ),
        SizedBox(height: context.height*0.012,),
        Row(
          children: [
            SizedBox(width: context.width*0.547,),
            Text(AppStrings.streetAhmedMaher,style: TextStyle(
                fontFamily: FontFamilies.almarai,
                fontWeight: FontWeight.w400,
                fontSize: Dimensions.font16/1.4,
                color: AppColors.locationTextFieldBlackColor
            ),),
          ],
        ),
        SizedBox(height: context.height*0.022,),
        Row(
          children: [
            SizedBox(width: context.width*0.094,),
            SvgPicture.asset(AppAssets.greyline,width: context.width*0.83,),
          ],
        ),
      ],
    );
  }
}
