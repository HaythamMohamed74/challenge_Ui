import 'package:challenge_ui/constants/constant_image.dart';
import 'package:flutter/material.dart';

class List_Item extends StatelessWidget {
  const List_Item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            ListImage,
            fit: BoxFit.cover,
            width: 120,
            height: 120,
          ),
        )
        ,SizedBox(width: 10,)
        ,Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Sports',style: TextStyle(color: Colors.grey),),
                ],
              )
              ,SizedBox(height: 7,)
              ,(Text('What Trainning Do VollyBall Players need? ',maxLines: 3,overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 20
                    ,fontWeight: FontWeight.w500

                ),)),
              SizedBox(height: 20,)
              ,Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(PersonImage),
                  )
                  ,SizedBox(width: 5,)
                  ,Text('McKindney')
                  ,SizedBox(width: 5,)
                  ,CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.grey,
                  )
                  ,SizedBox(width: 5,)
                  ,Text('Feb27,2023')
                ],
              )
            ],
          ),
        )
      ],),
    );
  }
}
