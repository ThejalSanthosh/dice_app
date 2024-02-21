import 'package:dice_app/view/dice_screen/dice_screen.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MainScreen());
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceScreen(),
    );
  }
}