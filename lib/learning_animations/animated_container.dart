import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            width: _isExpanded ? 200 : 100,
            height: _isExpanded ? 200 : 100,
            color: _isExpanded ? Colors.blue : Colors.red,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
           child: Text('Animated Container'))
        ],
      ),
    ),
    );
  }
}