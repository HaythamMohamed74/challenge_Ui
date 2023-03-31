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
            'https://img.freepik.com/free-photo/snow-scoot-snow-bike-extreme-winter-sports_654080-908.jpg?w=1060&t=st=1680132077~exp=1680132677~hmac=194b16e1f8f273035068afcfdf5580c7b273dca7e14e9f1bdd33d161e506ed73',
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
                    backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1680133394~exp=1680133994~hmac=bd37a3f67b6575e31a5269e123adec05d14245f48ba8931ead9fc0b5dd49cd32'),
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
