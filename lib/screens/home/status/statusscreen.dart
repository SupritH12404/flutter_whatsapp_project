import 'package:flutter/material.dart';
import 'package:untitled/widgets/uihelper.dart';

class Statusscreen extends StatelessWidget {
  var statuscontent = [
    {
      "img":"https://www.wwe.com/f/styles/wwe_large/public/rd-talent/Bio/Michael_Cole_bio.png",
      "name":"Michel Cole",
      "statustime":"5 min ago"
    },
    {
      "img":"https://wrestlingnoticias.com.br/wwe-en/wp-content/uploads/2025/01/Paul-Heyman.webp",
      "name":"Paul Heyman",
      "statustime":"17 min ago"
    },
    {
      "img":"https://hips.hearstapps.com/digitalspyuk.cdnds.net/13/40/showbiz-wwe-cm-punk.jpg?resize=980:*",
      "name":"Cm Punk",
      "statustime":"26 min ago"
    },
    {
      "img":"https://www.usanetwork.com/sites/usablog/files/2022/06/john-cena-month.jpg",
      "name":"John Cena",
      "statustime":"45 min ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(children: [
            SizedBox(height: 20,),
            Padding(padding: EdgeInsetsGeometry.only(left: 20)),
            Uihelper.CustomText(text: "Status", height: 20)
          ],),
          SizedBox(height: 10,),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children:[ CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://media.istockphoto.com/id/1341046662/vector/picture-profile-icon-human-or-people-sign-and-symbol-for-template-design.jpg?s=612x612&w=0&k=20&c=A7z3OK0fElK3tFntKObma-3a7PyO8_2xxW0jtmjzT78='),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xFF008069),
                    child: Center(child: Icon(Icons.add,color: Color(0xFFFFFFFF),size: 15,)),
                  ),
                )
                ]
              ),
            ),
            title: Uihelper.CustomText(text: "My Status", height: 20),
            subtitle: Uihelper.CustomText(text: "Tap to add status update", height: 15),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.CustomText(text: "Recent updates", height: 15),
                Icon(Icons.arrow_drop_down,color: Color(0xFF5E5E5E),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(statuscontent[index]["img"].toString()),
                ),
                title: Uihelper.CustomText(text: statuscontent[index]["name"].toString(), height: 16,fontWeight: FontWeight.bold),
                subtitle: Uihelper.CustomText(text: statuscontent[index]["statustime"].toString(), height: 14),
              );
            },
            itemCount: statuscontent.length,
            ),
          )


        ],
      )
    );
  }
}