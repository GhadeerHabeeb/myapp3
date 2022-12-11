import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBasket extends StatefulWidget {
  final String image;
 MyBasket({ required this.image });

  @override
  State<MyBasket> createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children: [
                Stack(
                  children: [
                    Container(
                      height:MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(widget.image),


                    ),
                  ],
                ),
              ],
            ),
          ),

      ),
    );
  }
}
