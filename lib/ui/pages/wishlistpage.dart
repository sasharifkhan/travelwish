import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/services/providers/wishProvider.dart';
import 'package:travel_wish/ui%20helper/commobutton.dart';

class Wishlistpage extends StatefulWidget {
  const Wishlistpage({super.key});

  @override
  State<Wishlistpage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Wishlistpage> {
  List<Map<String, dynamic>> favorite = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70.dg,
        centerTitle: false,
        title: Text(
          "Wishlist",
          style: TextStyle(
            color: Appconstants.titletextcolor,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Appconstants.backgroundcolor,
      ),
      backgroundColor: Appconstants.backgroundcolor,
      body: Consumer<Wishprovider>(
        builder: (_, provider, _) {
          List<Map<String, dynamic>> wishlist = provider.wishlisth;
          if (wishlist.isEmpty) {
            return Padding(
              padding: EdgeInsets.all(8.dg),
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/emptybanner.png")),
                  Appconstants.h20,
                  Text(
                    "Your wishlist is empty",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Appconstants.titletextcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Start exploring destinations to save them here!",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Appconstants.titletextcolor,
                    ),
                  ),
                  Appconstants.h20,
                  Commobutton(
                    buttontext: "Browse Destinations",
                    callback: () {},
                    bgcolor: Appconstants.fieldfillcolor,
                  ),
                ],
              ),
            );
          }
          return ListView.separated(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            scrollDirection: Axis.vertical,
            itemCount: wishlist.length,
            itemBuilder: (context, index) => Container(
              height: 60.dg,
              decoration: BoxDecoration(
                color: Appconstants.buttonbgcolor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: ListTile(
                onTap: () {},
                leading: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8.dg),
                  child: Image(
                    image: AssetImage("assets/images/image8.png"),
                    height: 56.dg,
                    width: 65.dg,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Paris",
                  style: TextStyle(
                    color: Appconstants.titletextcolor,
                    fontSize: 16.sp,
                  ),
                ),
                subtitle: Text(
                  "France",
                  style: TextStyle(
                    color: Appconstants.fieldhinttextcolor,
                    fontSize: 14.sp,
                  ),
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appconstants.fieldfillcolor,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Plan Trip",
                    style: TextStyle(
                      color: Appconstants.titletextcolor,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (BuildContext context, int index) {
              return Divider(height: 10, color: Appconstants.backgroundcolor);
            },
          );
        },
      ),
    );
  }
}
