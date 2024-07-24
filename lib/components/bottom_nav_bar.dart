// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({Key? key, required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        selectedIndex: 0, // Set your initial selected index
        color: Colors.grey,
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 8,
        onTabChange: (value) => (){},
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          )
        ],
      ),
    );
  }
}
