import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';
import 'package:travel_wish/ui/screens/loginscreen.dart';
import 'package:travel_wish/ui/pages/otpverifyscreen.dart';

class Passwordreset extends StatelessWidget {
  const Passwordreset({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    return Scaffold(
      backgroundColor: Appconstants.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Appconstants.titletextcolor),
        title: Text(
          "Forget Password",
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
              "Password Reset",
              style: TextStyle(
                color: Appconstants.titletextcolor,
                fontSize: 24.sp,
              ),
            ),
            Appconstants.h20,
            Text(
              "Enter the email linked to your account. We'll send instructions to reset your password.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Appconstants.titletextcolor,
                fontSize: 16.sp,
              ),
            ),
            Appconstants.h20,
            Textbox(controller: email, hintext: "Email"),
            Appconstants.h50,
            Commobutton(
              bgcolor: Appconstants.buttonbgcolor,
              buttontext: "Send Reset Link",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Otpverifyscreen()),
                );
              },
            ),
            Spacer(),
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
