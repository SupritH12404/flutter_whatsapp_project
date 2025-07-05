import 'package:flutter/material.dart';
import 'package:untitled/screens/onbordingpage/otp/otpscreen.dart';
import 'package:untitled/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController=TextEditingController();
  String selectedcountry="India";
  List<String>countries=[
    "India",
    "America",
    "Africa",
    "Italy",
    "Germany",
    "Japan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child: Uihelper.CustomText(
              text: 'Enter Your Phone Number',
              height: 20,
              color: Color(0xFF00A884),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Uihelper.CustomText(
            text: 'WhatsApp will nedd to verify your phone',
            height: 16,
          ),
          Uihelper.CustomText(
            text: 'number. Carrier changes may apply.',
            height: 16,
          ),
          Uihelper.CustomText(
            text: "what's my number?",
            height: 16,
            color: Color(0xFF00A884),
          ),
          SizedBox(height: 50),
          Padding(
           padding: const EdgeInsets.only(left: 60,right: 60),
           child: DropdownButtonFormField(items: countries.map((String country){
             return DropdownMenuItem(child: Text(country),value: country,);
           }).toList(), onChanged: (newvalue){
             setState(() {
               selectedcountry=newvalue!;
             });
           },value: selectedcountry,decoration: InputDecoration(
             enabledBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0XFF00A884))
             ),
             focusedBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Color(0XFF00A884))
             )
           ),),
         ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '+91',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                child: Expanded(
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
       floatingActionButton: Uihelper.custombutton(
        callback: () {
          login(phoneController.text.toString());
        },
        buttonname: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  login(String phonenumber){
    if(phonenumber == ""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Phone Number"),backgroundColor: Color(0xFF00A884),));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Otpscreen(phonenumber: phonenumber)));
    }
  }
}
