import 'package:challenge_ui/constants/constant_image.dart';
import 'package:challenge_ui/controller/book_mark_provider.dart';
import 'package:challenge_ui/models/news_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

import '../widgets/dissmisable_card.dart';
// import '../widgets/recommandation.dart';

class Archived extends StatelessWidget {
  NewsItem? model;
  // int? index;
  @override
  Widget build(BuildContext context) {
    var bookmarks=Provider.of<BookMarks>(context,listen: false);
    return  Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Text('Book Mark  news',style: TextStyle(color: Colors.blue),),),
        body: Provider.of<BookMarks>(context,listen: false).markslist.isEmpty?
            Column(
              children: [
                Container(child: Image.asset('assets/empty.jpg')),
                SizedBox(height: 40,),
                Text('There is no BookMarks !! ',style: TextStyle(fontSize: 30,color: Colors.red),)
              ],
            ):
        ListView.builder(itemBuilder: (context,int)
            {
              final bookmark = bookmarks.markslist[int];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Dismissible(
                  onDismissed: (value){
                    bookmarks.deleteMarks(int);
                  },
                  key: UniqueKey(),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                         bookmark.imgUrl,
                        fit: BoxFit.cover,
                        width: 120,
                        height: 120,
                      ),
                    )
                    ,SizedBox(width: 10,)
                    ,Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(bookmark.category.toString(),style: TextStyle(color: Colors.grey),)
                          ,SizedBox(height: 5,)
                          ,(Text(bookmark.title.toString(),maxLines: 2,overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20
                                ,fontWeight: FontWeight.w500

                            ),))
                          ,SizedBox(height: 20,)
                          ,Row(
                            children: [
                              // CircleAvatar(
                              //   radius: 20,
                              //   backgroundImage: NetworkImage(PersonImage),
                              // )
                              // SizedBox(width: 5,)
                              // ,Text('newsItem')
                              // ,SizedBox(width: 5,)
                              // ,CircleAvatar(
                              //   radius: 2,
                              //   backgroundColor: Colors.grey,
                              // )
                              // ,SizedBox(width: 5,)
                              // ,Text('Feb27,2023')
                            ],
                          )
                        ],
                      ),
                    )
                  ],),
                ),
              );
            }
            ,itemCount:Provider.of<BookMarks>(context,listen: false).markslist.length ,
        )
    );
  }
}
