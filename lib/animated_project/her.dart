import 'package:flutter/material.dart';
import 'package:untitled/animated_project/he.dart';

class Her extends StatefulWidget {
  const Her({super.key});

  @override
  State<Her> createState() => _HerState();
}

class _HerState extends State<Her> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => He()),
                  );
                },
                child: Hero(
                  tag: 'background',
                  child: Image.asset(
                    'assets/images/shreebalaji.png',
                    height: 500,
                    width: 500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Shree Balaji',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
