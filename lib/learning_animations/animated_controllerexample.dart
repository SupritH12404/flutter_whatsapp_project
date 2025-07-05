import 'package:flutter/material.dart';

class AnimatedControllerexample extends StatefulWidget {
  const AnimatedControllerexample({super.key});

  @override
  State<AnimatedControllerexample> createState() =>
      AnimatedControllerexampleState();
}

class AnimatedControllerexampleState extends State<AnimatedControllerexample>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<Color?> coloranimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween<double>(begin: 0,end: 300).animate(animationController);
    coloranimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(animation: animation,
             builder: (context , child){
              return Container(
                width: animation.value,
                height: 100,
                color: coloranimation.value,
              );
             })
          ],
        ),
      ),
    );
  }
  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }
}
