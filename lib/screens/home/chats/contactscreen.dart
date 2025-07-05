import 'package:flutter/material.dart';
import 'package:untitled/widgets/uihelper.dart';

class Contactscreen extends StatelessWidget {
  var contactcontent = [
    {
      "images":
          "https://www.usanetwork.com/sites/usablog/files/2023/11/wwe-la-knight2.jpg",
      "name": "L.A Night",
      "status": "Available",
    },
    {
      "images":
          "https://www.usanetwork.com/sites/usablog/files/2022/06/john-cena-month.jpg",
      "name": "John Cena",
      "status": "LAST TIME IS NOW",
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6qIivAq9P3NUfmSK7jgnujOpYPFN2fcELqg&s",
      "name": "Virat kohli",
      "status": "Busy",
    },
    {
      "images":
          "https://upload.wikimedia.org/wikipedia/commons/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
      "name": "Christino Ronaldo",
      "status": "What's App Call Only",
    },
    {
      "images":
          "https://static.toiimg.com/thumb/msid-114295802,width-1280,height-720,resizemode-4/114295802.jpg",
      "name": "Jey Uso",
      "status": "Available",
    },
    {
      "images":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/250px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg",
      "name": "Leo Messi",
      "status": "Busy",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Uihelper.CustomText(text: "Select Contact", height: 16,color: Colors.white),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(contactcontent[index]["images"].toString()),
          ),
          title: Uihelper.CustomText(text: contactcontent[index]["name"].toString(), height: 16,fontWeight: FontWeight.bold,color: Color(0xFF000000)),
          subtitle: Uihelper.CustomText(text: contactcontent[index]["status"].toString(), height: 14),
        );
      },
      itemCount: contactcontent.length,),
    );
  }
}