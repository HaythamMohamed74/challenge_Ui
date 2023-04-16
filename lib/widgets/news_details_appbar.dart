import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/book_mark_provider.dart';
import '../models/news_item.dart';

class NewsDetailsAppbar extends StatelessWidget {
  NewsDetailsAppbar({
    Key? key,
    required this.item,
  }) : super(key: key);
  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue[300],
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(
          backgroundColor: Colors.white30,
          radius: 10,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white, size: 25),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundColor: Colors.white30,
            radius: 20,
            child: IconButton(
              onPressed: (){

              },
              icon: (Icon( Icons.bookmark , color: Colors.white, size: 25)),
            ),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundColor: Colors.white30,
            radius: 20,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_outlined, color: Colors.white, size: 25),
            ),
          ),
        )
      ],
      pinned: true,
      expandedHeight: 350,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              item.imgUrl,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 200,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    item.category,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 20,
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        item.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
