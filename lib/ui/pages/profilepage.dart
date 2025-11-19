import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui/screens/loginscreen.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.dg,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 18.sp),
        ),
        backgroundColor: Appconstants.backgroundcolor,
      ),
      backgroundColor: Appconstants.backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.dg),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: Appconstants.buttonbgcolor, //theme control
                  borderRadius: BorderRadius.circular(8.r),
                ),
                height: 220.dg,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(90),
                      child: Image(
                        image: AssetImage('assets/images/image11.png'),
                        height: 128.dg,
                        width: 128.dg,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Sophia Carter",
                          style: TextStyle(
                            fontSize: 22.sp,
                            color: Appconstants.titletextcolor,
                          ),
                        ),
                        Text(
                          "Travel Enthusiast",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Appconstants.fieldhinttextcolor,
                          ),
                        ),
                        Text(
                          "Joined in 2021",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Appconstants.fieldhinttextcolor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Appconstants.h20,
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  // color: Appconstants.buttonbgcolor, //theme control
                  borderRadius: BorderRadius.circular(8.r),
                ),
                height: 95.dg,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Wishlists",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Appconstants.titletextcolor,
                      ),
                    ),
                    Appconstants.h10,
                    Row(
                      children: [
                        Container(
                          height: 48.dg,
                          width: 48.dg,
                          decoration: BoxDecoration(
                            color: Appconstants.fieldfillcolor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(
                            Icons.favorite_outline,
                            color: Appconstants.titletextcolor,
                            size: 24.dg,
                          ),
                        ),
                        Appconstants.w10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dream Destinations",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Appconstants.titletextcolor,
                              ),
                            ),
                            Text(
                              "12 places",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Appconstants.fieldhinttextcolor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Appconstants.h10,
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  // color: Appconstants.buttonbgcolor, //theme control
                  borderRadius: BorderRadius.circular(8.r),
                ),
                height: 137.dg,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Appconstants.titletextcolor,
                      ),
                    ),
                    Appconstants.h10,
                    Row(
                      children: [
                        Container(
                          height: 40.dg,
                          width: 40.dg,
                          decoration: BoxDecoration(
                            color: Appconstants.fieldfillcolor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(
                            Icons.settings,
                            color: Appconstants.titletextcolor,
                            size: 24.dg,
                          ),
                        ),
                        Appconstants.w10,
                        Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Appconstants.titletextcolor,
                          ),
                        ),
                      ],
                    ),
                    Appconstants.h10,
                    Row(
                      children: [
                        Container(
                          height: 40.dg,
                          width: 40.dg,
                          decoration: BoxDecoration(
                            color: Appconstants.fieldfillcolor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(
                            Icons.privacy_tip_outlined,
                            color: Appconstants.titletextcolor,
                            size: 24.dg,
                          ),
                        ),
                        Appconstants.w10,
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Appconstants.titletextcolor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Commobutton(
                buttontext: "Logout",
                bgcolor: Appconstants.fieldfillcolor,
                callback: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Loginscreen()),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
