import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripia_user/core/app_export.dart';
import 'package:tripia_user/core/utils/widgets/dimensions.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final suffixicon;
  final validator;
  const MyTextField({
    Key? key,
    this.suffixicon,
    this.controller,
    required this.hintText,
    required this.obsecureText,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 33),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection: TextDirection.rtl,
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(Dimensions.radius20)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimensions.radius20),
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: FontFamilies.almarai, fontSize: Dimensions.font20 / 1.25),
          labelStyle: TextStyle(
            fontFamily: FontFamilies.almarai,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: height * 0.025, horizontal: width * 0.04),
          prefixIcon: suffixicon,
        ),
      ),
    );
  }
}
