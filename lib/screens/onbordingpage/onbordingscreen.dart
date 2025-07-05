import 'package:flutter/material.dart';
import 'package:untitled/screens/onbordingpage/login/loginscreen.dart';
import 'package:untitled/widgets/uihelper.dart';

class Onbordingscreen extends StatelessWidget {
  const Onbordingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image.png'),
            SizedBox(height: 20),
            Uihelper.CustomText(
              text: 'Welcome to WhatsApp',
              color: Color(0xFF000000),
              height: 20,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'Read Out ', height: 14),
                Uihelper.CustomText(
                  text: 'Privacy Policy. ',
                  color: Color(0xFF0C42CC),
                  height: 14,
                ),
                Uihelper.CustomText(
                  text:
                      'Tap '
                      'Agree and Continue'
                      '',
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'to accept the ', height: 14),
                Uihelper.CustomText(
                  text: 'Terms of Service',
                  height: 14,
                  color: Color(0xFF0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.custombutton(
        callback: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscreen()));
        },
        buttonname: 'Agree and Continue',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
