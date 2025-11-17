import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';

class Commobutton extends StatelessWidget {
  final String buttontext;
  final VoidCallback callback;
  const Commobutton({
    super.key,
    required this.buttontext,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 48.h),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15.r),
          ),
          backgroundColor: Appconstants.buttonbgcolor,
        ),
        child: Text(
          buttontext,
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 16.sp),
        ),
      ),
    );
  }
}
