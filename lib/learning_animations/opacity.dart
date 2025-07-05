import 'package:flutter/material.dart';

class OpacityA extends StatefulWidget {
  const OpacityA({super.key});

  @override
  State<OpacityA> createState() => _OpacityState();
}

class _OpacityState extends State<OpacityA> {
double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: _opacity,
             duration: Duration(seconds: 1),
             child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
             ),
             ),
             SizedBox(height: 20,),
             ElevatedButton(onPressed: (){
              setState(() {
                _opacity = _opacity == 1.0 ? 0.0 : 1.0;
              });
             },
              child: Text('Opacity'))
          ],
        ),
      ),
    );
  }
}