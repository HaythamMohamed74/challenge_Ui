// import 'package:challenge_ui/constants/constant_image.dart';
// import 'package:flutter/material.dart';
//
// class DismissibleCard extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final Function() onDismissed;
//
//   DismissibleCard({
//     required this.title,
//     required this.imageUrl,
//     required this.onDismissed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       key: Key(title),
//       onDismissed: ,
//       background: Container(color: Colors.red),
//       child:Row(children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Image.network(
//             CarsorImag,
//             fit: BoxFit.cover,
//             width: 120,
//             height: 120,
//           ),
//         )
//         ,SizedBox(width: 10,)
//         ,Expanded(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Text('sports',style: TextStyle(color: Colors.grey),),
//                 ],
//               )
//               ,SizedBox(height: 7,)
//               ,(Text('title',maxLines: 3,overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                     fontSize: 20
//                     ,fontWeight: FontWeight.w500
//
//                 ),)),
//               SizedBox(height: 20,)
//               ,Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 20,
//                     backgroundImage: NetworkImage(PersonImage),
//                   )
//                   ,SizedBox(width: 5,)
//                   ,Text('newsItem')
//                   ,SizedBox(width: 5,)
//                   ,CircleAvatar(
//                     radius: 2,
//                     backgroundColor: Colors.grey,
//                   )
//                   ,SizedBox(width: 5,)
//                   ,Text('Feb27,2023')
//                 ],
//               )
//             ],
//           ),
//         )
//       ],),
//     );
//   }
// }
