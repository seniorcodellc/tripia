import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app-color.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../../../core/widgets/dimensions.dart';

class MyTextField2 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  final Function()? onTap;
  const MyTextField2({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText,  this.validator,  this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width*0.11),
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
              borderRadius: BorderRadius.circular(Dimensions.radius20/1.1)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimensions.radius20/1.1),
          ),
          fillColor: AppColors.notesTextFieldColor,
          filled:true,
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.locationTextFieldBlackColor,fontFamily: FontFamilies.almarai,fontSize: Dimensions.font20/1.2),
          labelStyle: TextStyle(color: AppColors.locationTextFieldBlackColor,fontWeight: FontWeight.w500,fontFamily: FontFamilies.almarai),
          contentPadding: EdgeInsets.symmetric(vertical: context.height*0.02,horizontal: context.width*0.02),
          prefixIcon: suffixicon,
        ),
      ),
    );
  }
}
class MyTextField4 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  final Function()? onTap;
  const MyTextField4({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width*0.11),
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
              borderRadius: BorderRadius.circular(Dimensions.radius20/1.1)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimensions.radius20/1.1),
          ),
          fillColor: AppColors.notesTextFieldColor,
          filled:true,
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: FontFamilies.almarai,fontSize: Dimensions.font20/1.2,color: AppColors.hintTextFieldColor),
          labelStyle: TextStyle(color: AppColors.locationTextFieldBlackColor,fontWeight: FontWeight.w500,fontFamily: FontFamilies.almarai),
          contentPadding: EdgeInsets.symmetric(vertical: context.height*0.02,horizontal: context.width*0.02),
          prefixIcon: suffixicon,
        ),
      ),
    );
  }
}

class MyTextField6 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  const MyTextField6({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width*0.045),
      child: TextFormField(
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
              borderRadius: BorderRadius.circular(Dimensions.radius20/1.1)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimensions.radius20/1.1),
          ),
          fillColor: AppColors.notesTextFieldColor,
          filled:true,
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: FontFamilies.almarai,fontSize: Dimensions.font20/1.2,color: AppColors.hintTextFieldColor,fontWeight: FontWeight.w400),
          labelStyle: TextStyle(color: AppColors.locationTextFieldBlackColor,fontWeight: FontWeight.w500,fontFamily: FontFamilies.almarai),
          contentPadding: EdgeInsets.symmetric(vertical: context.height*0.024,horizontal: context.width*0.04),
          prefixIcon: suffixicon,
          prefixIconColor: Colors.grey,
        ),
      ),
    );
  }
}
