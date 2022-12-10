import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String coName;
  final String coDes;
  final icon;
  final color;
  MyContainer({
    required this.coName,
    required this.coDes,
    required this.icon,
    required this.color,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 150,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Stack
        (
        children: [
          Positioned(
              right:0,
              child: Icon(icon,color: Colors.black12,size: 80,)),

          Positioned(
              top: 70,
              left: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coName,style: TextStyle(color: Colors.black26,fontSize: 20),),
                  SizedBox(
                    height: 5,
                  ),
                  Text(coDes,style: TextStyle(color: Colors.black26,fontSize: 20),),
                ],
              ))
        ],
      ),

    );
  }
}


