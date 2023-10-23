import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'dimensions.dart';
//////////////////////TextField\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  const MyTextField({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 33),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection:TextDirection.rtl ,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
          ),
          fillColor: Colors.grey.shade100,
          filled:true,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(color: Colors.black,),
          labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
          prefixIcon: suffixicon,
        ),
      ),
    );
  }
}
class MyTextField2 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  const MyTextField2({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width*0.13),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection:TextDirection.rtl ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: Colors.grey.shade100,
          filled:true,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(color: Colors.black,),
          labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
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
  const MyTextField4({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width*0.13),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection:TextDirection.rtl ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: Colors.grey.shade100,
          filled:true,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(color: Colors.grey,),
          labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
          prefixIcon: suffixicon,
        ),
      ),
    );
  }
}

class MyTextField3 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  const MyTextField3({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection:TextDirection.rtl ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Colors.grey.shade100,
          filled:true,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(color: Colors.black,),
          labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 12),
          prefixIcon: suffixicon,
        ),
      ),
    );
  }
}
class MyTextField5 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  const MyTextField5({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 33),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        validator: validator,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintTextDirection:TextDirection.rtl ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: Colors.grey.shade100,
          filled:true,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(color: Colors.black,),
          labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 18),
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
              borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: Colors.grey.shade100,
          filled:true,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(color: Colors.grey,),
          labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: context.height*0.02,horizontal: context.width*0.04),
          prefixIcon: suffixicon,
          prefixIconColor: Colors.grey,
        ),
      ),
    );
  }
}

//////////////////////Button\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class MyButton extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.height*0.077,
        padding: EdgeInsets.all(context.height*0.01),
        margin: EdgeInsets.symmetric(horizontal: context.width*0.32),
        decoration: BoxDecoration(color: Colors.red.shade500,
            borderRadius: BorderRadius.circular(Dimensions.radius20)),
        child: Center(
          child: Text(text,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: Dimensions.font20*1.1,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
class MyButton2 extends StatelessWidget {
  int? height;
  int? width;
  final Function()? onTap;
  final String text;
  MyButton2({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width*0.5,
        height: context.height*0.072,
        decoration: BoxDecoration(color: Colors.red.shade500,
            borderRadius: BorderRadius.circular(Dimensions.radius20)),
        child: Center(
          child: Text(text,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: Dimensions.font20,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}

//////////////////////Social Media Container\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class SocialMediaContainer extends StatelessWidget {
  double? width;
  double? height;
  String? imagePath;
  SocialMediaContainer({this.width,this.height,this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white, // Background color
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 4, // Blur radius
              offset: Offset(0, 3), // Offset
            ),
          ]// Background color
      ),
      child: Center(
        child: Image.asset(
          imagePath!, // Path to your Google icon
          width: context.width*0.08, // Adjust width and height as needed
          height: context.height*0.08,
        ),
      ),
    );
  }
}
//////////////////////TextFont20\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class Text20 extends StatelessWidget {
   final text;
   const Text20({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: Dimensions.font20),);
  }
}
//////////////////////Button in splash screen\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
class SplashButton extends StatelessWidget {
  final Function()? onTap;
  SplashButton({required this.onTap}) ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(width: context.width*0.13,),
                Container(
                  width: context.width*0.37, // Set the desired width and height
                  height: context.height*0.124,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red, // Border color
                      width: 3.0, // Border thickness
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: context.height*0.013,
              right: context.width*0.586,
              child: Row(
                children: [
                  SizedBox(width: context.width*0.2,),
                  Container(
                    width: context.width*0.2, // Set the desired width and height
                    height: context.height*0.098,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward, // Replace with the desired icon
                        color: Colors.white, // Change the icon color
                        size: 30, // Change the icon size
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
