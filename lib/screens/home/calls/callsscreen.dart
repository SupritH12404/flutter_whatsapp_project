import 'package:flutter/material.dart';
import 'package:untitled/widgets/uihelper.dart';

class Callsscreen extends StatelessWidget {
  
  var callcontent = [
    {
      "images":
          "https://upload.wikimedia.org/wikipedia/commons/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
      "name": "Christino Ronaldo",
      "timestatus": "5 min ago",
    },
    {
      "images":
          "https://static.toiimg.com/thumb/msid-114295802,width-1280,height-720,resizemode-4/114295802.jpg",
      "name": "Jey Uso",
      "timestatus": "15 min ago",
    },
    {
      "images":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/250px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg",
      "name": "Leo Messi",
      "timestatus": "45 min ago",
    },
    {
      "images":
          "https://images.mykhel.com/img/2025/01/triple-h-jpg-1738211813684_1738211811853-600x338.jpg",
      "name": "Triple H",
      "timestatus": "1 hr ago",
    },
    {
      "images":
          "https://preview.redd.it/awesome-shot-of-jacob-fatu-from-the-latest-newcastle-live-v0-8sijtv0kljxd1.jpeg?auto=webp&s=b857c95b909a92fea324e02240f2ede6236e18b7",
      "name": "Jacob Fattu",
      "timestatus": "3 hr ago",
    },
    {
      "images":
          "https://external-preview.redd.it/sami-zayn-on-twitter-ive-a-had-a-brilliant-career-and-while-v0-ExjISfOeU35uDNDX2bLct5GPEii7Re1H0bELykb1C_k.jpg?width=640&crop=smart&auto=webp&s=ce8e9db5339d19ffa69df6271a0e98c6dd4c28ce",
      "name": "Sami Zayn",
      "timestatus": "1 day ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      callcontent[index]["imges"].toString(),
                    ),
                  ),
                  title: Uihelper.CustomText(
                    text: callcontent[index]["name"].toString(),
                    height: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: callcontent[index]["timestatus"].toString(),
                    height: 16,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Color(0xFF00A884)),
                  ),
                );
              },
              itemCount: callcontent.length,
            ),
          ),
        ],
      ),
    );
  }
}
