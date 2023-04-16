import 'package:flutter/material.dart';

import '../models/news_item.dart';

class NewsDetailsBody extends StatelessWidget {
  const NewsDetailsBody({
    Key? key,
    required this.item,
  }) : super(key: key);

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}
