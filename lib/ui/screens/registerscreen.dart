import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    bool checkbox = false;
    final fullname = TextEditingController();
    final email = TextEditingController();
    final password = TextEditingController();
    final confirmpassword = TextEditingController();
    return Scaffold(
      backgroundColor: Appconstants.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Appconstants.titletextcolor),
        title: Text(
          "Register",
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 18.sp),
        ),
        backgroundColor: Appconstants.backgroundcolor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.dg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                    color: Appconstants.titletextcolor,
                    fontSize: 16.sp,
                  ),
                ),
                Textbox(controller: fullname, hintext: "Full Name"),
                Appconstants.h20,
                Text(
                  "Email",
                  style: TextStyle(
                    color: Appconstants.titletextcolor,
                    fontSize: 16.sp,
                  ),
                ),
                Textbox(controller: email, hintext: "Email"),
                Appconstants.h20,
                Text(
                  "Password",
                  style: TextStyle(
                    color: Appconstants.titletextcolor,
                    fontSize: 16.sp,
                  ),
                ),
                Textbox(
                  controller: password,
                  hintext: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_sharp,
                      color: Appconstants.fieldhinttextcolor,
                    ),
                  ),
                ),
                Appconstants.h20,
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    color: Appconstants.titletextcolor,
                    fontSize: 16.sp,
                  ),
                ),
                Textbox(
                  controller: confirmpassword,
                  hintext: "Confirm Password",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_sharp,
                      color: Appconstants.fieldhinttextcolor,
                    ),
                  ),
                ),
                Appconstants.h20,
                Row(
                  children: [
                    Checkbox(value: checkbox, onChanged: (checkbox) {}),
                    Text(
                      "I agree to the Terms & Conditions",
                      style: TextStyle(
                        color: Appconstants.fieldhinttextcolor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                Appconstants.h50,
                Commobutton(buttontext: "Sign Up", callback: () {}),
                Appconstants.h10,
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Appconstants.fieldhinttextcolor),
                      text: "Already have an account? Login",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
