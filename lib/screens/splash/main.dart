import 'package:flutter/material.dart';
import 'package:untitled/screens/home/homescreen.dart';
import 'package:untitled/screens/splash/splashscreen.dart';

void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
        useMaterial3: false,
      ),
      home: Splashscreen(),
    );
  }
}