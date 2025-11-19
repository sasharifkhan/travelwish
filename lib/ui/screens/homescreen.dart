import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/ui/pages/explorepage.dart';
import 'package:travel_wish/ui/pages/profilepage.dart';
import 'package:travel_wish/ui/pages/wishlistpage.dart';

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
      backgroundColor: Appconstants.backgroundcolor,
      body: IndexedStack(
        index: selectedindex,
        children: [Explorepage(), Wishlistpage(), Profilepage()],
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
