import 'package:flutter/material.dart';

class foodInfo
{ final int id;
  final String Fname;
  final String Fdescription;
  final String img;
final List<String> images;

  foodInfo({required this.id, required this.Fname,required this.Fdescription,required this.img,required this.images});
}


List<foodInfo>Food=[
  foodInfo(
      id: 1,
      Fname: "Soop",
      Fdescription: "FdescriptionFdescriptionFdescriptionFdescriptionFdescription",
      img: "https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    images: ["https://media.istockphoto.com/id/1191655374/photo/caucasian-eastern-european-cuisine-soop-georgian-restaurant-the-photograph-lay-flat-on-the.jpg?b=1&s=170667a&w=0&k=20&c=3syxxFrf0bQPDg2upLYyoJfMEaf18JZ1MzMMshSW6Jg=",
    "https://media.istockphoto.com/id/139399337/photo/bean-bean-bean.jpg?b=1&s=170667a&w=0&k=20&c=_nD5O9TX73I5xBmrTE9r2R8MOvuIhGHjqT1BzcD7z8U=",
    "https://media.istockphoto.com/id/119110464/photo/fish-soop.jpg?b=1&s=170667a&w=0&k=20&c=ysWXPa_zoiDWNczR7MTzE9JDFd1IF98dD1iNlP9ax1w="],),

  foodInfo(
      id: 2,
      Fname: "Salad",
      Fdescription: "FdescriptionFdescriptionFdescriptionFdescriptionFdescription",
      img:  "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    images: ["https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      "https://plus.unsplash.com/premium_photo-1664640733984-cbee33873783?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2FsYWR8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
          "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"],
  ),

  foodInfo(
    id: 3,
    Fname: "Meat",
    Fdescription: "FdescriptionFdescriptionFdescriptionFdescriptionFdescription",
    img: "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    images:
   ["https://images.unsplash.com/photo-1544025162-d76694265947?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80",
     "https://images.unsplash.com/photo-1625631980644-062c9a959279?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWVhdCUyMGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
         "https://images.unsplash.com/photo-1544025162-d76694265947?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80",
   ],),
  foodInfo(
    id: 4,
    Fname: "Dessert",
    Fdescription: "FdescriptionFdescriptionFdescriptionFdescriptionFdescription",
    img:  "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=480&q=80",
    images: [
      "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://media.istockphoto.com/id/186863920/photo/chocolate-souffle-and-ice-cream.jpg?b=1&s=170667a&w=0&k=20&c=JK-9ieV2HGW3bvV61mx02uqidRFt7vphTacquUbj6j0=",
      "https://images.unsplash.com/photo-1551024601-bec78aea704b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80",
    ],),
];


