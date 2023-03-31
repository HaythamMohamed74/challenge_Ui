import 'package:flutter/material.dart';

class Row_item extends StatelessWidget {
  String? leftText;
  String? rightText;


  Row_item({required this.leftText,required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText!,style:TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20),),
          Text(rightText!,style:TextStyle(color: Colors.blue,fontSize: 20),)
        ],),
    );
  }
}