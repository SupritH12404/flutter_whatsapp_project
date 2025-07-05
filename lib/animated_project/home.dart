import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 229, 222, 222),
        appBar: AppBar(
          leading: Icon(Icons.account_circle, color: Colors.blue),
          centerTitle: true,
          title: Text(
            'Animation',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Suprit',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Container(
            height: 200,
            width: 300,
            
            decoration: BoxDecoration(
              color: Colors.white
            ),
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your Main Course',style: TextStyle(color: Colors.black,fontSize: 15),),
                    Icon(Icons.info_outline)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Marketing With B2B',style: TextStyle(color: Colors.black,fontSize: 25),),
                  ],
                ),
              ],
            ),
            
          ),
          ],
        ),
      ),
    );
  }
}
