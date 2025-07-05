import 'package:flutter/material.dart';
import 'package:untitled/screens/profile/profilescreen.dart';
import 'package:untitled/widgets/uihelper.dart';

class Otpscreen extends StatelessWidget {

  String phonenumber;
  Otpscreen({required this.phonenumber});

  TextEditingController otp1controller = TextEditingController(); 
  TextEditingController otp2controller = TextEditingController(); 
  TextEditingController otp3controller = TextEditingController(); 
  TextEditingController otp4controller = TextEditingController(); 
  TextEditingController otp5controller = TextEditingController(); 
  TextEditingController otp6controller = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Uihelper.CustomText(text: 'Verify Your Number', height: 20,color: Color(0xFF00A884),fontWeight: FontWeight.bold),
            SizedBox(height: 30,),
            Uihelper.CustomText(text: "You've tried to register +91${phonenumber}", height: 15),
            Uihelper.CustomText(text: "recently. Wait befor requesting an sms or a call ", height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "with your code. ", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Uihelper.CustomText(text: 'Wrong Number?', height: 15,color: Color(0xFF00A884)),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customconatiners(otp1controller),
                SizedBox(width: 10),
                Uihelper.customconatiners(otp2controller),
                SizedBox(width: 10),
                Uihelper.customconatiners(otp3controller),
                SizedBox(width: 10),
                Uihelper.customconatiners(otp4controller),
                SizedBox(width: 10),
                Uihelper.customconatiners(otp5controller),
                SizedBox(width: 10),
                Uihelper.customconatiners(otp6controller),
              ],
            ), 
            SizedBox(height: 30,),
            Uihelper.CustomText(text: "Didn't receive code", height: 14,color: Color(0xFF00A881))
          ],
        ),
      ),
      floatingActionButton: Uihelper.custombutton(
        callback: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profilescreen()));
        },
        buttonname: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}