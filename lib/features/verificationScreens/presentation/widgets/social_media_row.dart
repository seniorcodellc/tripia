import 'package:flutter/cupertino.dart';
import 'package:tripia_user/features/verificationScreens/presentation/widgets/social_media_container.dart';

import '../../../../core/utils/app-assets.dart';
import '../../../../core/utils/size-utils.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaContainer(
          width:width*0.18,
          height: height*0.067,
          imagePath: AppAssets.facebook,
        ),
        SizedBox(width: width*0.04,),
        SocialMediaContainer(
          width:width*0.18,
          height: height*0.067,
          imagePath: AppAssets.twitter,
        ),
        SizedBox(width: width*0.04,),
        SocialMediaContainer(
          width:width*0.18,
          height: height*0.067,
          imagePath: AppAssets.google,
        ),
      ],
    );
  }
}
