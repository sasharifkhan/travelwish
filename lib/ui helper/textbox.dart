import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';

class Textbox extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final IconButton? suffixIcon;

  const Textbox({
    super.key,
    required this.controller,
    required this.hintext,
    this.suffixIcon,
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
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.circular(12.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.circular(12.r),
        ),
        fillColor: Color(0xFF243647),
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
