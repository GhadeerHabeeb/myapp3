import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder{

  final Page;
  SlideRight({this.Page}):super(
    pageBuilder:(context,animation,animationtwo)=>Page,transitionsBuilder:(context,animation,animationtwo,child)

  {
    var begin=Offset(0.0, 1.0);
    var end = Offset(0.0, 0.0);
    var tween = Tween(begin:begin,end:end);
    var curvesanimation = CurvedAnimation(parent:animation,curve:Curves.easeInOutBack);
    return SlideTransition(position:tween.animate(curvesanimation),child: child,);
  }
  );
}
