import 'package:flutter/material.dart';

class MyBasket extends StatefulWidget {
  const MyBasket({Key? key}) : super(key: key);

  @override
  State<MyBasket> createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
          Container(
            height:MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width,
            color: Colors.purpleAccent,
          ),

      ),
    );
  }
}
