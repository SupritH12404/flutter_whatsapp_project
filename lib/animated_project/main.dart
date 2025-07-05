import 'package:flutter/material.dart';
import 'package:untitled/animated_project/he.dart';

void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: He(),
    );
  }
}