import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';

class Explorepage extends StatefulWidget {
  const Explorepage({super.key});

  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Textbox(
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Appconstants.fieldhinttextcolor,
                size: 24.dg,
              ),
            ),
            controller: search,
            hintext: "Search",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close_rounded,
                color: Appconstants.fieldhinttextcolor,
                size: 24.dg,
              ),
            ),
          ),
          Appconstants.h10,
          SizedBox(
            height: 40.dg,
            child: ListView(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 38.dg),
                        backgroundColor: Appconstants.fieldfillcolor,
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                      ),
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Appconstants.titletextcolor,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Appconstants.w10,
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appconstants.fieldfillcolor,
                        minimumSize: Size(0, 38.dg),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                      ),
                      child: Text(
                        "Beach",
                        style: TextStyle(
                          color: Appconstants.titletextcolor,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Appconstants.w10,
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appconstants.fieldfillcolor,
                        minimumSize: Size(0, 38.dg),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                      ),
                      child: Text(
                        "Mountain",
                        style: TextStyle(
                          color: Appconstants.titletextcolor,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Appconstants.w10,
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appconstants.fieldfillcolor,
                        minimumSize: Size(0, 38.dg),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                      ),
                      child: Text(
                        "City",
                        style: TextStyle(
                          color: Appconstants.titletextcolor,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Appconstants.w10,
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appconstants.fieldfillcolor,
                        minimumSize: Size(0, 38.dg),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                      ),
                      child: Text(
                        "Historical",
                        style: TextStyle(
                          color: Appconstants.titletextcolor,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
