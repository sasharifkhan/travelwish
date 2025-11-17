import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';
import 'package:travel_wish/ui/screens/passwordreset.dart';
import 'package:travel_wish/ui/screens/registerscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registerscreen()),
                  );
                },
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Don't have an account? Register",
                  style: TextStyle(
                    color: Appconstants.fieldhinttextcolor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
