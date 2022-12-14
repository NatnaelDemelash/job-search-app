// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String logoImagePath;
  final String jobTitle;
  final int hourlyRate;

  const RecentJobCard(
      {Key? key,
      required this.companyName,
      required this.logoImagePath,
      required this.jobTitle,
      required this.hourlyRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    child: Image.asset(logoImagePath),
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(companyName),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  '\$' + hourlyRate.toString() + '/hr',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
