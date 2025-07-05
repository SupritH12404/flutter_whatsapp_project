import 'package:flutter/material.dart';
import 'package:untitled/utils/job_card.dart';
import 'package:untitled/utils/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsforyou = [
    ['Uber', 'UI Designer', 'assets/images/uber_icon.png', 45],
    ['Google', 'Product Dev', 'assets/images/google_icon.png', 80],
    ['Apple', 'Software Eng.', 'assets/images/apple_icon.png', 95],
  ];

  final List recentjob = [
    ['Telegram', 'Web Designer', 'assets/images/telegram.png', 45],
    ['Youtube', 'UI/UX Dev', 'assets/images/youtube.png', 80],
    ['Facebook', 'Software Eng.', 'assets/images/facebook.png', 95],
    ['Nike', 'Flutter Dev', 'assets/images/nike.png', 95],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 75),
          // App bar
          Padding(
            padding: EdgeInsetsGeometry.only(left: 25),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'assets/images/menu.png',
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Discover a New path',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 10.0,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a job..',
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          child: Image.asset(
                            'assets/images/preferences.png',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'For You',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: jobsforyou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsforyou[index][0],
                  jobTitle: jobsforyou[index][1],
                  logoImagePath: jobsforyou[index][2],
                  hourlyRate: jobsforyou[index][3],
                );
              },
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Recently Added',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          Expanded(
            child: Container(
              height: 180,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: ListView.builder(
                  itemCount: recentjob.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return RecentJobCard(
                      companyName: recentjob[index][0],
                      jobTitle: recentjob[index][1],
                      logoImagePath: recentjob[index][2],
                      hourlyRate: recentjob[index][3],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
