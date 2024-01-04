import 'package:flutter/cupertino.dart';
import 'package:tripia_user/core/app_export.dart';


class Text20 extends StatelessWidget {
  final text;
  const Text20({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontFamily: FontFamilies.jFlat,
        fontSize: Dimensions.font20/1.3,
        color: AppColors.blackText20,
    ),);
  }
}
