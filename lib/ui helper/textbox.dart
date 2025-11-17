import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';

class Textbox extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;

  const Textbox({
    super.key,
    required this.controller,
    required this.hintext,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorHeight: 16.sp,
      style: TextStyle(fontSize: 16.sp, color: Appconstants.titletextcolor),
      cursorColor: Appconstants.titletextcolor,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.circular(12.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.circular(12.r),
        ),
        fillColor: Appconstants.fieldfillcolor,
        filled: true,
        hint: Text(
          hintext,
          style: TextStyle(
            color: Appconstants.fieldhinttextcolor,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
