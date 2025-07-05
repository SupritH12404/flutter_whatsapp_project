import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/screens/onbordingpage/onbordingscreen.dart';
import 'package:untitled/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onbordingscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp.png'),
            SizedBox(height: 20,),
            Uihelper.CustomText(text: "WhatsApp", height: 18,fontWeight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}