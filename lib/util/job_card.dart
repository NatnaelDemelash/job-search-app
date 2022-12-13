// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String logoImagePath;
  final String jobTitle;
  final int hourlyRate;

  const JobCard(
      {Key? key,
      required this.companyName,
      required this.logoImagePath,
      required this.jobTitle,
      required this.hourlyRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 220,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    child: Image.asset(logoImagePath),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Part Time',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Text(
                jobTitle,
                style: GoogleFonts.dosis(fontSize: 25),
              ),
              Text(
                '\$' + hourlyRate.toString() + '/hr',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
