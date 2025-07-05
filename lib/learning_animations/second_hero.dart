import 'package:flutter/material.dart';

class SecondHero extends StatefulWidget {
  const SecondHero({super.key});

  @override
  State<SecondHero> createState() => _SecondHeroState();
}

class _SecondHeroState extends State<SecondHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero-example',
          child: Container(height: 300, width: 300, color: Colors.blue),
        ),
      ),
    );
  }
}
