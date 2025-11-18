import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_wish/constants/appconstants.dart';

class Desdetailsscreen extends StatelessWidget {
  const Desdetailsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appconstants.backgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Image(
                    image: AssetImage("assets/images/productbanner1.png"),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage("assets/images/image1.png"),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage("assets/images/image6.png"),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
                options: CarouselOptions(
                  pauseAutoPlayOnManualNavigate: true,
                  height: 320.h,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  viewportFraction: 1,
                  aspectRatio: 1.2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 24.dg,
                            color: Appconstants.titletextcolor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                            size: 24.dg,
                            color: Appconstants.titletextcolor,
                          ),
                        ),
                      ],
                    ),
                    Appconstants.h20,
                    Text(
                      "Ubud",
                      style: TextStyle(
                        color: Appconstants.titletextcolor,
                        fontSize: 22.sp,
                      ),
                    ),
                    Appconstants.h10,
                    Container(
                      // Container for theme control
                      color: Appconstants.backgroundcolor,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bali, Indonesia",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Appconstants.fieldhinttextcolor,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Ubud",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Appconstants.titletextcolor,
                                  ),
                                ),
                                Text(
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  "Ubud, a town in Bali, is known as a center for traditional crafts and dance. The surrounding rainforest and terraced rice paddies, dotted with Hindu temples and shrines, are among Bali's most famous landscapes.",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Appconstants.fieldhinttextcolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Image(
                              image: AssetImage("assets/images/image1.png"),
                              height: 196.h,
                              width: 130.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Appconstants.h20,
                    Text(
                      "Highlights",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Appconstants.titletextcolor,
                      ),
                    ),
                    Appconstants.h10,
                    SizedBox(
                      height: 200.h,
                      child: GridView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 10.w,
                          crossAxisCount: 1,
                          mainAxisExtent: 160.w,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              color: Appconstants.backgroundcolor,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8.r,
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                          "assets/images/image12.png",
                                        ),
                                        height: 160.h,
                                        width: 160.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Rice Terraces",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Appconstants.titletextcolor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
