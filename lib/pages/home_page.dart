import 'package:challenge_ui/models/news_item.dart';
import 'package:challenge_ui/pages/news_details.dart';
import 'package:flutter/material.dart';

import '../widgets/carsor_slider.dart';
import '../widgets/recommandation.dart';
import '../widgets/row_item.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
static String id='home';


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body:
        SingleChildScrollView(
        child: Column(children: [
          Row_item(leftText: 'Breaking News', rightText: 'View all',)
          ,CarouselWithIndicatorDemo(),
          const SizedBox(height: 15,)
          ,Row_item(leftText: 'Recommendation', rightText: 'View all',),
          const SizedBox(height: 15,)
          ,...news
           .map((newsItem) => InkWell(
              onTap: (){
                Navigator.push (
                  context,
                  MaterialPageRoute (
                    builder: (BuildContext context) =>  NewsDetails(item: newsItem,),
                  ),
                );
              },
              child: Recomandation_News(newsItem: newsItem))).toList()


        ]),
      ),

    ),
    );
  }
}
//ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 10,
//               itemBuilder: (BuildContext context, int index){
//                   return Recomandation_News(newsItem: news,);
//           }
//           )





