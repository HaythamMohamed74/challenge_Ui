import 'package:challenge_ui/controller/book_mark_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/news_item.dart';
import '../widgets/news_details_appbar.dart';
import '../widgets/news_details_body.dart';

class NewsDetails extends StatelessWidget {
  final NewsItem item;
  // final bool iconBook;
  // final Function() toggleIconState;

  NewsDetails({required this.item, Key? key}) : super(key: key);

  static String id = 'details';

  @override
  Widget build(BuildContext context) {
    var bookmarks=Provider.of<BookMarks>(context,listen: false);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: <Widget>[
          SliverAppBar(
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
                      bookmarks.toggleBookmark(item);
                      // bookmarks.addmarks(item);
                      // Provider.of<BookMarks>(context,listen: false).toggleBookMark(item);
                    },
                    icon:Icon (bookmarks.isBookmarked(item)?Icons.bookmark: Icons.bookmark_border ,color: Colors.white, size: 25),
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
          ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(15),
                  clipBehavior: Clip.none,
                  height: 1000,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30) ,
                      bottomRight:Radius.circular(30) ,
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color(0xff900D09),
                            child: Text(item.author.split(" ")[0])
                        ),
                        SizedBox(width: 14,),
                        Text('EGYPT',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                        const SizedBox(width: 12,),
                        const CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.check,size: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      item.desc,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    )
                  ],),
                ),
              ),
          ],
        ),
            ));



  }
}


