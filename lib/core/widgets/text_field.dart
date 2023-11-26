import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//////////////////////TextField\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

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

//////////////////////Button\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

//////////////////////Social Media Container\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////////////TextFont20\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

//////////////////////Button in splash screen\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
