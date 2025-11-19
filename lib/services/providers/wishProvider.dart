import 'package:flutter/material.dart';

class Wishprovider extends ChangeNotifier {
  final List<Map<String, dynamic>> _explorelist = [
    {"image": "assets/images/image1.png"},
    {"image": "assets/images/image6.png"},
    {"image": "assets/images/image7.png"},
    {"image": "assets/images/image8.png"},
    {"image": "assets/images/image9.png"},
    {"image": "assets/images/image10.png"},
    {"image": "assets/images/image11.png"},
    {"image": "assets/images/image12.png"},
    {"image": "assets/images/image13.png"},
    {"image": "assets/images/image14.png"},
  ];
  get explorelist => _explorelist;

  final List<Map<String, dynamic>> _wishlist = [];
  get wishlisth => _wishlist;

  // togglewishlist(int index) {
  //   if (_wishlist.contains(index)) {
  //     _wishlist.remove(index);
  //   } else {}
  // }
}
