import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui/screens/loginscreen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appconstants.backgroundcolor,
      body: ListView(
        children: [
          Column(
            children: [
              Image(image: AssetImage("assets/images/onboardingimage.png"),fit: BoxFit.cover,),
              Padding(
                padding: EdgeInsets.all(15.dg),
                child: Column(
                  children: [
                    Text(
                      "Discover Your Next Adventure",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Appconstants.titletextcolor,
                        fontSize: 28.sp,
                      ),
                    ),
                    Appconstants.h10,
                    Text(
                      "Explore curated destinations, save your favorites, and plan your dream trip with ease.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Appconstants.titletextcolor,
                        fontSize: 16.sp,
                      ),
                    ),
                    Appconstants.h100,
                    Commobutton(
                      bgcolor: Appconstants.buttonbgcolor,
                      buttontext: "Get Started",
                      callback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginscreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
