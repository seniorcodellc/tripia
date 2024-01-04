import 'package:flutter/material.dart';
import 'package:tripia_user/core/app_export.dart';


class MyTextFieldTravel extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  final Function()? onTap;
  const MyTextFieldTravel({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      //padding: EdgeInsets.symmetric(horizontal: context.width*0.08),
      width: context.width*0.83,
      child: TextFormField(
        onTap: onTap,
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        cursorColor: Colors.black26,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection:TextDirection.rtl ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(Dimensions.radius20*1.1)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimensions.radius20),
          ),
          fillColor: AppColors.notesTextFieldColor,
          filled:true,
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: FontFamilies.jFlat,fontSize: Dimensions.font20/1.2,color: AppColors.locationTextFieldBlackColor,fontWeight: FontWeight.w400),
          labelStyle: TextStyle(color: AppColors.locationTextFieldBlackColor,fontWeight: FontWeight.w400,fontFamily: FontFamilies.jFlat),
          contentPadding: EdgeInsets.symmetric(vertical: context.height*0.024,horizontal: context.width*0.04),
          prefixIcon: suffixicon,
          prefixIconColor: Colors.grey,
        ),
      ),
    );
  }
}

class MyTextFieldTravel2 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  final Function()? onTap;
  const MyTextFieldTravel2({Key? key, this.suffixicon, required this.controller, required this.hintText, required this.obsecureText, this.validator, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      //padding: EdgeInsets.symmetric(horizontal: context.width*0.08),
      width: context.width*0.89,
      child: TextFormField(
        onTap: onTap,
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        cursorColor: Colors.black26,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection:TextDirection.rtl ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(Dimensions.radius20)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimensions.radius20),
          ),
          fillColor: AppColors.notesTextFieldColor,
          filled:true,
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: FontFamilies.jFlat,fontSize: Dimensions.font20/1.2,color: AppColors.locationTextFieldBlackColor,fontWeight: FontWeight.w400),
          labelStyle: TextStyle(color: AppColors.locationTextFieldBlackColor,fontWeight: FontWeight.w400,fontFamily: FontFamilies.jFlat),
          contentPadding: EdgeInsets.symmetric(vertical: context.height*0.024,horizontal: context.width*0.04),
          prefixIcon: suffixicon,
          prefixIconColor: Colors.grey,
        ),
      ),
    );
  }
}
