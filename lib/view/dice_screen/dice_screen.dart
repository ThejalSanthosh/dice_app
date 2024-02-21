import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int diceNo=1;
  List imagePath = [
    "assets/d1.png",
    "assets/d2.png",
    "assets/d3.png",
    "assets/d4.png",
    "assets/d5.png",
    "assets/d6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            Container(
              width: 100,
              height: 100,
            decoration: BoxDecoration(

                image: DecorationImage(image:AssetImage(imagePath[diceNo]))
              // image: DecorationImage(image: AssetImage("assets/d$diceNo.png"))
            ),
            ),
        
            SizedBox(height: 20,),
        
            InkWell(

                onTap: (){

                  setState(() {
                    diceNo=Random().nextInt(6);
                  });
                },

              child: Container(
                width: 100,
                height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/button.png"))
              ),
              ),
            ),
        
        
        
          ],
        ),
      ),
    );
  }
}