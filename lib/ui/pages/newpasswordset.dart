import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';
import 'package:travel_wish/ui/screens/homescreen.dart';

class Newpasswordset extends StatelessWidget {
  const Newpasswordset({super.key});

  @override
  Widget build(BuildContext context) {
    final newpassword = TextEditingController();
    final confirmnewpassword = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Appconstants.titletextcolor),
        title: Text(
          "New Password",
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 18.sp),
        ),
        backgroundColor: Appconstants.backgroundcolor,
      ),
      backgroundColor: Appconstants.backgroundcolor,
      body: Padding(
        padding: EdgeInsets.all(15.dg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Create New Password",
              style: TextStyle(
                color: Appconstants.titletextcolor,
                fontSize: 24.sp,
              ),
            ),
            Appconstants.h20,
            Text(
              "Your new password must be at least 8 characters long and include a mix of letters, numbers, and symbols.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Appconstants.titletextcolor,
                fontSize: 16.sp,
              ),
            ),
            Appconstants.h20,
            Textbox(
              controller: newpassword,
              hintext: "New  Password",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.visibility_sharp,
                  color: Appconstants.fieldhinttextcolor,
                  size: 24.dg,
                ),
              ),
            ),
            Appconstants.h20,
            Textbox(
              controller: confirmnewpassword,
              hintext: "Confirm  New Password",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.visibility_sharp,
                  color: Appconstants.fieldhinttextcolor,
                  size: 24.dg,
                ),
              ),
            ),
            Appconstants.h50,
            Commobutton(
              buttontext: "Save",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
