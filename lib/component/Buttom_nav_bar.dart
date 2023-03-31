import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:flutter/cupertino.dart';
class Buttom_nav extends StatelessWidget {
  const Buttom_nav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GNav(
        rippleColor: Colors.lightBlueAccent, // tab button ripple color when pressed
        hoverColor: Colors.blueGrey, // tab button hover color
        haptic: true, // haptic feedback
        tabBorderRadius: 25,
        // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
        // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
        // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
        curve: Curves.easeOutExpo, // tab animation curves
        duration: Duration(milliseconds: 900), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.grey, // unselected icon color
        activeColor: Colors.white, // selected icon and text color
        iconSize: 35, // tab button icon size
        tabBackgroundColor: Colors.blue, // selected tab background color
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ]
    );
  }
}