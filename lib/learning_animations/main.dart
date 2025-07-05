import 'package:flutter/material.dart';
import 'package:untitled/learning_animations/animated_container.dart';
import 'package:untitled/learning_animations/animated_controllerexample.dart';
import 'package:untitled/learning_animations/opacity.dart';

void main(){
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  const MYAPP({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedControllerexample(),
    );
  }
}