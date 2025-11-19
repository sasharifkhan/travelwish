import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:travel_wish/constants/appconstants.dart';
import 'package:travel_wish/services/providers/wishProvider.dart';
import 'package:travel_wish/ui%20helper/textbox.dart';
import 'package:travel_wish/ui/pages/desdetailsscreen.dart';

class Explorepage extends StatefulWidget {
  const Explorepage({super.key});

  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  final search = TextEditingController();

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
      body: Padding(
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
            Appconstants.h10,
            Expanded(
              child: Consumer<Wishprovider>(
                builder: (_, provider, _) {
                  List<Map<String, dynamic>> explorelist = provider.explorelist;

                  return GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: explorelist.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 230.dg,
                      crossAxisSpacing: 10.dg,
                      mainAxisSpacing: 10.dg,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Desdetailsscreen(
                                explorelist: explorelist[index],
                              ),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8.dg),
                          child: Image(
                            image: AssetImage("${explorelist[index]['image']}"),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
