import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';

class Commobutton extends StatelessWidget {
  final String buttontext;
  final VoidCallback callback;
  final Color bgcolor;
  const Commobutton({
    super.key,
    required this.buttontext,
    required this.callback,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 40.dg),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15.r),
          ),
          backgroundColor: bgcolor,
        ),
        child: Text(
          buttontext,
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 16.sp),
        ),
      ),
    );
  }
}
