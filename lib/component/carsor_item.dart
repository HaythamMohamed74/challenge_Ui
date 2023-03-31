import 'package:carousel_slider/carousel_slider.dart';
import 'package:challenge_ui/constants/constant_image.dart';
import 'package:flutter/material.dart';

class Carsor_item extends StatefulWidget {
  int? curindex;
  Carsor_item({required this.curindex});

  @override
  State<Carsor_item> createState() => Carsor_itemState(curindex: 0);
}

class Carsor_itemState extends State<Carsor_item> {
  int? curindex;

  Carsor_itemState({required this.curindex});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Stack(
          children: [
            Image.network(CarsorImag),
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
            curindex=index;
            // current=index;
          });
        }
      ),
    );
  }
}
