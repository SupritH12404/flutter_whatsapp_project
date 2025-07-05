import 'package:flutter/material.dart';
import 'package:untitled/screens/home/chats/contactscreen.dart';
import 'package:untitled/widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  var arrcontent = [
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSscizGmcRQQCPWvDZyGEG84mRHWUIHWM2mNQ&s",
      "name": "Roman Reings",
      "lastmsg": "Acknowledge ME",
      "time": "05:45 am",
      "msg": "3",
    },
    {
      "images":
          "https://www.kupywrestlingwallpapers.info/wallpapers/2016/dean-ambrose-champion-wallpaper-mobile.jpg",
      "name": "Dean Ambrose",
      "lastmsg": "2027",
      "time": "06:15 am",
      "msg": "1",
    },
    {
      "images":
          "https://www.usatoday.com/gcdn/authoring/authoring-images/2024/04/03/USAT/73190722007-005-raw-03252024-cm-2094028-a-63-ada-5-ed-26-b-4-c-99-a-9-f-59-e-15-d-6-cd-89.jpg?width=1200&disable=upscale&format=pjpg&auto=webp",
      "name": "The Rock",
      "lastmsg": "Summer Slame i am comming",
      "time": "08:45 am",
      "msg": "2",
    },
    {
      "images":
          "https://i.pinimg.com/736x/32/39/0f/32390f07f85ebe95eb7f52bb1f518a3b.jpg",
      "name": "Jimmy Uso",
      "lastmsg": "No YEET",
      "time": "01:15 am",
      "msg": "1",
    },
    {
      "images":
          "https://www.usanetwork.com/sites/usablog/files/2023/11/wwe-la-knight2.jpg",
      "name": "L.A Night",
      "lastmsg": "Yeah",
      "time": "02:34 am",
      "msg": "4",
    },
    {
      "images":
          "https://www.usanetwork.com/sites/usablog/files/2022/06/john-cena-month.jpg",
      "name": "John Cena",
      "lastmsg": "LAST TIME IS NOW",
      "time": "05:35 am",
      "msg": "2",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6qIivAq9P3NUfmSK7jgnujOpYPFN2fcELqg&s",
      "name": "Virat kohli",
      "lastmsg": "RCB",
      "time": "01:25 am",
      "msg": "6",
    },
    {
      "images":
          "https://upload.wikimedia.org/wikipedia/commons/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
      "name": "Christino Ronaldo",
      "lastmsg": "Suuuuuuu",
      "time": "04:55 am",
      "msg": "2",
    },
    {
      "images":
          "https://static.toiimg.com/thumb/msid-114295802,width-1280,height-720,resizemode-4/114295802.jpg",
      "name": "Jey Uso",
      "lastmsg": "YEET",
      "time": "02:25 am",
      "msg": "1",
    },
    {
      "images":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/250px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg",
      "name": "Leo Messi",
      "lastmsg": "Hello",
      "time": "06:35 am",
      "msg": "4",
    },
    {
      "images":
          "https://c.ndtvimg.com/2021-11/u756k9jg_ab-de-villiers_625x300_19_November_21.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605",
      "name": "AB Devillers",
      "lastmsg": "Ee Saala Cup Naamdu",
      "time": "04:15 am",
      "msg": "3",
    },
    {
      "images":
          "https://images.mykhel.com/img/2025/01/triple-h-jpg-1738211813684_1738211811853-600x338.jpg",
      "name": "Triple H",
      "lastmsg": "Wreselmaina 42 is going to Greatest",
      "time": "05:25 am",
      "msg": "2",
    },
    {
      "images":
          "https://preview.redd.it/awesome-shot-of-jacob-fatu-from-the-latest-newcastle-live-v0-8sijtv0kljxd1.jpeg?auto=webp&s=b857c95b909a92fea324e02240f2ede6236e18b7",
      "name": "Jacob Fattu",
      "lastmsg": "Yaa Raa Mean",
      "time": "05:15 am",
      "msg": "4",
    },
    {
      "images":
          "https://external-preview.redd.it/sami-zayn-on-twitter-ive-a-had-a-brilliant-career-and-while-v0-ExjISfOeU35uDNDX2bLct5GPEii7Re1H0bELykb1C_k.jpg?width=640&crop=smart&auto=webp&s=ce8e9db5339d19ffa69df6271a0e98c6dd4c28ce",
      "name": "Sami Zayn",
      "lastmsg": "Lets GOO",
      "time": "07:35 am",
      "msg": "1",
    },
    {
      "images":
          "https://www.kupywrestlingwallpapers.info/wallpapers/2020/randy-orton-14x-champion-wallpaper-retina.jpg",
      "name": "Randy Orten",
      "lastmsg": "RKO RKO RKO",
      "time": "06:05 am",
      "msg": "3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrcontent[index]["images"].toString(),
                    ),
                  ),
                  title: Uihelper.CustomText(
                    text: arrcontent[index]["name"].toString(),
                    height: 14,
                    fontWeight: FontWeight.bold
                  ),
                  subtitle: Uihelper.CustomText(
                    text: arrcontent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0xFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Uihelper.CustomText(
                        text: arrcontent[index]["time"].toString(),
                        height: 12,
                        color: Color(0xFF026500),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xFF026500),
                        child: Uihelper.CustomText(
                          text: arrcontent[index]["msg"].toString(),
                          height: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrcontent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Contactscreen()));
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xFF008665),
          child: Image.asset('assets/images/comment.png'),
        ),
      ),
    );
  }
}
