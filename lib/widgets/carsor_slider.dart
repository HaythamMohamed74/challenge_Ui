import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:challenge_ui/models/news_item.dart';
import 'package:challenge_ui/pages/news_details.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  // void _onNewsItemTap(int index,NewsItem newsItem) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => NewsDetails(newsItem: newsItem, index: index,),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders =news
        .map((item) => Container(
         child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          child: GestureDetector(
              onTap:(){
                Navigator.push (
                  context,
                  MaterialPageRoute (
                    builder: (BuildContext context) =>  NewsDetails(item: item,),
                  ),
                );              },
            child: Stack(
              children: <Widget>[
                Image.network(item.imgUrl, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue[800],
                        borderRadius: BorderRadius.circular(20)
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(item.category,style: TextStyle(color: Colors.white),),
                  ),
                )),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: [
                                Text(item.author
                                ,style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(width: 7,),
                                const CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.check,size: 12,
                                  ),
                                ),
                              ],
                            ),
                          )
                          ,Text(
                            ' good title is here ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    ))
        .toList();

    return Column(children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: news.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key,),
              child: Container(
                width: 18.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape:_current == entry.key? BoxShape.circle:BoxShape.rectangle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.blue)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        // SizedBox(height: 100,)
      ]);

  }
}