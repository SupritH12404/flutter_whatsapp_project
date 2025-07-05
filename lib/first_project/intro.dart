import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          height: 170,
          width: 170,
          child: Center(
            child: Image.asset('assets/images/shreebalaji.png'),
            ),
        ),
      ),
    );
  }
}