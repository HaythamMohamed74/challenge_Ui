import 'package:challenge_ui/pages/archived_page.dart';
import 'package:challenge_ui/pages/home_page.dart';
import 'package:challenge_ui/pages/person_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../pages/fav_page.dart';


class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),
   FavPage(),
    Archived(),
   PersonPage()


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.menu,color: Colors.black,)),
        actions: [
          CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: CircleAvatar(
                  backgroundColor:  Colors.grey[300],
                  child: Icon(Icons.search_sharp,color: Colors.black,))),
          SizedBox(width: 15,)
          , CircleAvatar(
              backgroundColor:  Colors.grey[300],
              child: Icon(Icons.add_alert,color: Colors.black,)),
          SizedBox(width: 15,)
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.blue,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 50),
              tabBackgroundColor: Colors.blue[100]!,
              color: Colors.grey,
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
                  icon: Icons.bookmark_border_outlined,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}