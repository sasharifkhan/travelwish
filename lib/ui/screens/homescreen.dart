import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui/pages/explorepage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.dg,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 24.dg),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings, size: 24.dg),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Appconstants.titletextcolor),
        title: Text(
          "TravelWish",
          style: TextStyle(color: Appconstants.titletextcolor, fontSize: 18.sp),
        ),
        backgroundColor: Appconstants.backgroundcolor,
      ),
      backgroundColor: Appconstants.backgroundcolor,
      body: IndexedStack(
        index: selectedindex,
        children: [
          Explorepage(),
          Center(
            child: Text(
              "Empty Wishlist",
              style: TextStyle(color: Appconstants.titletextcolor),
            ),
          ),
          Center(
            child: Text(
              "Empty Profile",
              style: TextStyle(color: Appconstants.titletextcolor),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80.dg,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
          currentIndex: selectedindex,
          backgroundColor: Appconstants.backgroundcolor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Appconstants.titletextcolor,
          unselectedItemColor: Appconstants.fieldhinttextcolor,
          iconSize: 24.dg,
          items: [
            BottomNavigationBarItem(label: "Explore", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
              label: "Wishlist",
              icon: Icon(Icons.favorite_border),
            ),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
