// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'util/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    //[companyName, jobsTitle, logoImagePath, hourlyRate]
    ['Google', 'Frontend Dev.', 'lib/assets/icons/google.png', 85],
    ['Uber', 'UI/UX Designer', 'lib/assets/icons/uber.png', 45],
    ['Nike', 'Software Eng.', 'lib/assets/icons/nike.png', 90],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // custom app bar
          SizedBox(
            height: 75.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),
                  // borderRadius: BorderRadius.circular(10),
                  // color: Colors.deepPurple,
                  ),
              child: Image.asset('lib/assets/icons/menu-left.png'),
            ),
          ),
          //discover a new path
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text('Discover a new path',
                style: GoogleFonts.sahitya(
                    fontSize: 28, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 20),

          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/assets/icons/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for a job',
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Container(
                  height: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    'lib/assets/icons/preference.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          //for you -> job cards
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text('For You',
                style: GoogleFonts.sahitya(
                    fontSize: 23, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 20),

          Container(
              height: 145,
              child: ListView.builder(
                  itemCount: jobsForYou.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return JobCard(
                      companyName: jobsForYou[index][0],
                      hourlyRate: jobsForYou[index][3],
                      jobTitle: jobsForYou[index][1],
                      logoImagePath: jobsForYou[index][2],
                    );
                  })),
          //recently added -> job titles
        ],
      ),
    );
  }
}
