import 'package:flutter/material.dart';
import 'package:untitled/screens/home/calls/callsscreen.dart';
import 'package:untitled/screens/home/camera/camerascreen.dart';
import 'package:untitled/screens/home/chats/chatsscreen.dart';
import 'package:untitled/screens/home/status/statusscreen.dart';
import 'package:untitled/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: Uihelper.CustomText(
            text: 'WhatsApp',
            height: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/Search.png'),
            ),
            IconButton(onPressed: (){},
             icon: Icon(Icons.more_vert_sharp))
          ],
        ),
        body: TabBarView(
          children: [
            Camerascreen(),
            Chatsscreen(),
            Statusscreen(),
            Callsscreen(),
          ],
        ),
      ),
    );
  }
}
