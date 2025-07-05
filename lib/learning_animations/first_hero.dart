import 'package:flutter/material.dart';

class FirstHero extends StatelessWidget {
  const FirstHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('First Screen',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'hero-example',
           child: Container(
            height: 100,
            width: 100,
            color: Colors.blue,
           )),
        ),
      ),
    );
  }
}