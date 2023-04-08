import 'package:flutter/material.dart';
import '../component/buttom_nav_bar.dart';
import '../component/carsor_slider.dart';
import '../component/row_item.dart';
import '../component/list_item.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   int currentIndex = 0;
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
      body: SingleChildScrollView(
        child: Column(children: [
          Row_item(leftText: 'Breaking News', rightText: 'View all',)
          ,CarouselWithIndicatorDemo(),
          const SizedBox(height: 15,)
          ,Row_item(leftText: 'Recommendation', rightText: 'View all',)
          ,ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index){
                  return List_Item();
          }
          )
          // ,SingleChildScrollView(
          //   child: Column(children: [
          //     List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //     ,List_Item()
          //
          //   ],),
          // )
        ]),
      ),
        bottomNavigationBar:const Buttom_nav()
    ),
    );
  }
}






