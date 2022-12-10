import 'dart:ffi';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:myapp3/Container.dart';
import 'package:myapp3/Data.dart';
import 'package:myapp3/PageTwo.dart';
import 'package:myapp3/animationroute.dart';


class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  String img="https://images.unsplash.com/photo-1574068467946-533eea9838ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
       scrollDirection: Axis.vertical,
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeInLeft(child: Text(" Hello, Ghadeer",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700), ),),
                  FadeInLeft(child:    Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),

                  ))

                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: FadeInUp(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyContainer(coName: "Drinks", coDes: "Drinks description", icon:Icons.emoji_food_beverage_outlined ,color: Colors.yellowAccent,),
                      MyContainer(coName: "food", coDes: "Food description", icon: Icons.emoji_emotions_outlined,color: Colors.pinkAccent,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child:FadeInUp(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyContainer(coName: "Notes", coDes: "Note Description", icon: Icons.note_add_outlined,color: Colors.greenAccent,),
                      MyContainer(coName: "more", coDes: "More Description", icon: Icons.more_horiz_rounded,color: Colors.lightBlueAccent,),
                    ],
                  ) ,
                )

              ),
              FadeInLeft(child:  Text(' Guess you like it',style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),),
              SizedBox(
                height:10,
              ),
              FadeInLeft(
                child:

              SizedBox(
                height: 200,
                child: ListView.builder
                  (scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(8.0),
                    itemCount: Food.length,
                    itemBuilder: (BuildContext context,int index){

                    return Row(
                      children: [
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            InkWell(
                              onTap: ()
                              {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PageTwe(fname: Food[index].Fname,fDescrip:Food[index].Fdescription,img: Food[index].img,images:Food[index].images,),));
                              },
                              child: Container(
                                height: 100,
                                width: 150,

                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  image:
                                  DecorationImage(

                                      image:NetworkImage(Food[index].img),
                                      fit: BoxFit.fitWidth
                                  ) ,
                                ),


                              ),
                            ),


                            SizedBox(
                              height: 10,
                            ),
                            Text(Food[index].Fname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          ],
                            ),
                        SizedBox(
                          width: 20,
                        ),  ],
                    );

                }),
              )

        ) ,
    ]
  ),
    )
      ),
    );
  }
}
