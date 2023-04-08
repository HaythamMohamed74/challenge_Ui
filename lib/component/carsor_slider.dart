import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:challenge_ui/models/news_item.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  // final List<String> imgList = [
  //   'https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744',
  //   'https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744',
  //   'https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744',
  //   'https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744',
  //   'https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744',
  //   'https://img.freepik.com/free-photo/group-diverse-friends-walking-pass-art-exhibition-placard_53876-15903.jpg?w=1060&t=st=1680128794~exp=1680129394~hmac=dac010c79747e23b60ef8c259f5e6828d901916610002b1423424019b5d87744'
  // ];
  // NewsItem? item;
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  // List<Widget> imageSliders = imgList.map((item) => Image.network(item)).toList();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders =news
        .map((item) => Container(
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${item.title} image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
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
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
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