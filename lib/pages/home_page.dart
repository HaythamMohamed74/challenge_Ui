import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../component/Buttom_nav_bar.dart';
import '../component/Row_item.dart';
import '../component/carsor_item.dart';
import '../component/list_item.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int currentIndex = 0;
   // final controller = PageController(viewportFraction: 0.8, keepPage: true);
   List<IconData> icons = [    Icons.home,    Icons.favorite,    Icons.all_inbox,Icons.person  ];


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
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

      body: ListView(children: [
        SizedBox(height: 20,),
        Row_item(leftText: 'Breaking News', rightText: 'View all',)
        , CarouselSlider(
          items: [
            Stack(
              children: [
                Image.network('https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744'),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                          10
                      ),
                    ),
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 100,
                  left:0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    // color: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 0,)
                                  ,Text(
                                    'CNN indonesia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width:2 ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.blue[600],
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  )
                                  ,SizedBox(width: 7,)
                                  ,Text('6 hours ',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),

                            Text(
                              'Alexander wears modified helmet in road   ',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
            ,Stack(
              children: [
                Image.network('https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744'),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                          10
                      ),
                    ),
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 100,
                  left:0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    // color: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 0,)
                                  ,Text(
                                    'CNN indonesia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width:2 ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.blue[600],
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  )
                                  ,SizedBox(width: 7,)
                                  ,Text('6 hours ',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),

                            Text(
                              'Alexander wears modified helmet in road   ',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
            ,Stack(
              children: [
                Image.network('https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744'),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                          10
                      ),
                    ),
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 100,
                  left:0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    // color: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 0,)
                                  ,Text(
                                    'CNN indonesia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width:2 ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.blue[600],
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  )
                                  ,SizedBox(width: 7,)
                                  ,Text('6 hours ',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),

                            Text(
                              'Alexander wears modified helmet in road   ',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
            ,Stack(
              children: [
                Image.network('https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744'),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                          10
                      ),
                    ),
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 100,
                  left:0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    // color: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 0,)
                                  ,Text(
                                    'CNN indonesia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width:2 ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.blue[600],
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  )
                                  ,SizedBox(width: 7,)
                                  ,Text('6 hours ',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),

                            Text(
                              'Alexander wears modified helmet in road   ',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
            ,Stack(
              children: [
                Image.network('https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744'),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                          10
                      ),
                    ),
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 100,
                  left:0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    // color: Colors.black.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 0,)
                                  ,Text(
                                    'CNN indonesia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width:2 ),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.blue[600],
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  )
                                  ,SizedBox(width: 7,)
                                  ,Text('6 hours ',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),

                            Text(
                              'Alexander wears modified helmet in road   ',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
          options: CarouselOptions(
            // autoPlay: true,
              aspectRatio: 16/9,
              enlargeCenterPage: true,
              onPageChanged: (index,reason){
                setState(() {
                  currentIndex=index;
                  // curindex=index;
                  // current=index;
                });
              }
          ),
        ),
        SizedBox(height: 15,)
        , Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSmoothIndicator(
              effect: ExpandingDotsEffect(
                dotColor: Colors.grey.withOpacity(0.3),
                activeDotColor: Colors.blue,
              ),
              activeIndex:currentIndex ,

              count: 5
      ),
          ],
        )
        ,Row_item(leftText: 'Recommendation', rightText: 'View all',)
        ,SingleChildScrollView(
          child: Column(children: [
            List_Item()
            ,List_Item()
            ,List_Item()
            ,List_Item()
            ,List_Item()
            ,List_Item()
            ,List_Item()
            ,List_Item()
            ,List_Item()
            ,List_Item()

          ],),
        )
      ]),
        bottomNavigationBar:Buttom_nav()
    ),
    );
  }
}






