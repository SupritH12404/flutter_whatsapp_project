import 'package:flutter/material.dart';
import 'package:untitled/screens/home/homescreen.dart';
import 'package:untitled/widgets/uihelper.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profilescreen extends StatefulWidget {
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController namecontroller = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Uihelper.CustomText(
              text: "Profile info",
              height: 20,
              color: Color(0xFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            Uihelper.CustomText(
              text: 'Please provide your name and optional',
              height: 14,
            ),
            Uihelper.CustomText(text: 'profile photo', height: 14),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage==null? CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFD9D9D9),
                child: Image.asset(
                  "assets/images/camera.png",
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ): CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: 'Type your name here',
                      hintStyle: TextStyle(color: Color(0xFF5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF05AA82)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF05AA82)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF05AA82)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset('assets/images/happyface.png'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.custombutton(
        callback: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen()));
        },
        buttonname: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 80, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    }
  }
}
