

import 'dart:ffi';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp3/Basket.dart';
import 'package:myapp3/Data.dart';
import 'package:myapp3/PageOne.dart';
import 'package:myapp3/animationroute.dart';

class PageTwe extends StatefulWidget {

  final String fname;
  final String fDescrip;
  final String img;
  final List<String> images;
  PageTwe({required this.fname,required this.fDescrip,required this.img,required this.images});
  int count=0;

  @override
  State<PageTwe> createState() => _PageTweState();
}

class _PageTweState extends State<PageTwe> with SingleTickerProviderStateMixin {
   late AnimationController _controller;
   late Animation<double>  _animation;


  @override
  void initState() {
 
    _controller=AnimationController(vsync: this , duration: Duration(seconds: 2),);
    _animation= CurvedAnimation(parent: _controller, curve: Curves.easeInCirc);


    _controller..forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[
                FadeInLeft(
                  child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.black12,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight:Radius.circular(100),
                    ),
                    image:
                    DecorationImage(
                        image:NetworkImage(widget.img),
                        fit: BoxFit.fitWidth

                    ),
                    boxShadow: [BoxShadow(
                       offset: Offset.zero,
                      color: Colors.grey,
                      spreadRadius: 2.0,
                      blurRadius: 20.0,
                    )]
                  ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: GestureDetector(
                     onTap: (){
                       Navigator.pop(context);
                     },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.keyboard_arrow_left_rounded,color: Colors.black54,size: 50,),
                          Container(
                            height: 50,
                              width: 50,

                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Get.to(MyBasket(image:widget.img));
                                    },
                                      child: Icon(Icons.shopping_basket_outlined,color: Colors.black54,size: 50,)),
                                  Positioned(
                                    top: -3,
                                    right: 0,
                                    child:Text("${widget.count}",style:TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold), )
                                  ,)
                                ],
                              )),
                        ],
                      )),

                )

              ]
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 20),
              child: Column

                (crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(widget.fname,style: TextStyle(fontSize: 30),),
    Icon(Icons.more_horiz_rounded),
    ],
    ),

     Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    SizedBox(
    height:100,
    width:390,
    child: Text(widget.fDescrip,style: TextStyle(fontSize: 20,color: Colors.grey),)),

    ],
    ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                ),
                    SizedBox(
                      height: 10,
                    ),
                Text('More options',style: TextStyle(fontSize: 30),),

                    FadeInLeft(
                        child:

                        SizedBox(
                          height: 120,
                          child: ListView.builder
                            (scrollDirection: Axis.horizontal,

                              itemCount: widget.images.length,
                              itemBuilder: (BuildContext context,int index){
                              return
                                Row(
                                  children: [

                                      Container(

                                        height: 100,
                                        width: 150,

                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color:Colors.black12,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          image:
                                          DecorationImage(

                                              image:NetworkImage(
                                                  widget.images[index]),
                                              fit: BoxFit.fitWidth
                                          ) ,
                                        ),


                                      ),
                                    SizedBox(
                                      width: 10,
                                    )   ]);

                              }),
                        )

                    ) ,
   ] ),




  ),

    Padding(
      padding: const EdgeInsets.only(left: 10,),
      child: Container(

        child: FloatingActionButton(onPressed: (){

          setState(() {
            widget.count++;
            Get.snackbar(
              "hello there", "you make ${widget.count} request",
              snackPosition: SnackPosition.TOP,
              colorText: Colors.white,
              backgroundColor: Colors.grey,
              duration: Duration(seconds: 2),
              isDismissible: true,
              dismissDirection:DismissDirection.horizontal,
              forwardAnimationCurve: Curves.easeOutBack,
              titleText: Text("hello there",style: TextStyle(fontSize: 20,color: Colors.white),),
              messageText:Text("you make ${widget.count} request",style:TextStyle(fontSize: 20,color: Colors.white)),);

          });

        },
        child:
        Icon(Icons.add,size: 35,),
        backgroundColor: Colors.orangeAccent,),
      ),
    )

     ] ),


    ));
  }

}
