import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app-string.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';

class TabIcon extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  const TabIcon({Key? key, required this.backgroundColor, required this.text, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width*0.34,
      height: context.height*0.054,
      decoration: BoxDecoration(color:backgroundColor,
        borderRadius: BorderRadius.circular(Dimensions.radius20*1.25),
      ),
      child: Center(
        child: Text(text,
          style: TextStyle(
            color: textColor,
            fontSize: Dimensions.font20/1.1,
            fontFamily: FontFamilies.jFlat,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );

  }
}
