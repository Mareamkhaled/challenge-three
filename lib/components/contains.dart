import 'package:flutter/material.dart';

class category extends StatelessWidget {
  const category({super.key, required this.colorr, required this.name, required this.pic, required this.colorr2});
  final Color colorr ;
    final Color colorr2 ;

  final String name;
  final String pic;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: colorr
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Image(
          width: 20,
          image: AssetImage(pic)),
        Text(name ,style: TextStyle(color: colorr2 ,fontSize: 14,fontWeight: FontWeight.w400),)
      ],),
    );
  }
}