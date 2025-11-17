import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';
import 'package:travel_wish/ui/screens/loginscreen.dart';

class Otpverifyscreen extends StatefulWidget {
  const Otpverifyscreen({super.key});

  @override
  State<Otpverifyscreen> createState() => _OtpverifyscreenState();
}

class _OtpverifyscreenState extends State<Otpverifyscreen> {
  @override
  Widget build(BuildContext context) {
    final otp = TextEditingController();

    return Scaffold(
      backgroundColor: Appconstants.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Appconstants.titletextcolor),
        title: Text(
          "Verify Account",
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 18.sp),
        ),
        backgroundColor: Appconstants.backgroundcolor,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.dg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Enter OTP",
              style: TextStyle(
                color: Appconstants.titletextcolor,
                fontSize: 24.sp,
              ),
            ),
            Appconstants.h20,
            Text(
              "Please check your inbox (and spam folder) for the one-time password sent to your registered email.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Appconstants.titletextcolor,
                fontSize: 16.sp,
              ),
            ),
            Appconstants.h20,
            Textbox(controller: otp, hintext: "Otp"),
            TextButton(
              onPressed: () {},
              child: Text(
                "Resend OTP",
                style: TextStyle(
                  color: Appconstants.fieldhinttextcolor,
                  fontSize: 14.sp,
                ),
              ),
            ),
            Appconstants.h50,
            Commobutton(
              buttontext: "Verify",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Otpverifyscreen()),
                );
              },
            ),
            Appconstants.h150,
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginscreen()),
                );
              },
              child: Text(
                "Back to Login",
                style: TextStyle(
                  color: Appconstants.fieldhinttextcolor,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
