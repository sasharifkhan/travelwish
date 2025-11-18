import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';
import 'package:travel_wish/ui/pages/passwordreset.dart';
import 'package:travel_wish/ui/screens/homescreen.dart';
import 'package:travel_wish/ui/screens/registerscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      backgroundColor: Appconstants.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Appconstants.titletextcolor),
        title: Text(
          "Login",
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 18.sp),
        ),
        backgroundColor: Appconstants.backgroundcolor,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.dg),
          child: Column(
            children: [
              Appconstants.h20,
              Textbox(controller: email, hintext: "Email"),
              Text(""),
              Appconstants.h20,
              Textbox(
                controller: password,
                hintext: "Password",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.visibility_sharp,
                    color: Appconstants.fieldhinttextcolor,
                    size: 24.dg,
                  ),
                ),
              ),
              Text(""),
              Appconstants.h20,
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Passwordreset()),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Appconstants.fieldhinttextcolor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              Appconstants.h50,
              Commobutton(
                buttontext: "Login",
                callback: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                    (route) => false,
                  );
                },
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Appconstants.fieldhinttextcolor,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Registerscreen(),
                            ),
                          );
                        },
                      text: "Register",
                      style: TextStyle(
                        color: Appconstants.fieldhinttextcolor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
