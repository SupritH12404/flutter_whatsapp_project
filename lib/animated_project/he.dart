import 'package:flutter/material.dart';
import 'package:untitled/animated_project/her.dart';

class He extends StatefulWidget {
  const He({super.key});

  @override
  State<He> createState() => _HeState();
}

class _HeState extends State<He> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Her()));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                'assets/images/shreebalaji.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
