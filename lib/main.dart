// External imports
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tesla_app/battery.dart';
import 'package:tesla_app/middlerow.dart';

void main(List<String> args) {
  runApp(TeslaApp());
}

class TeslaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Getting rid of Red Debug on Screen.
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 17, 18, 10),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 17, 18, 10),
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Text(
            'Model 3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
        ),
        child: Column(
          children: [
            BatteryRow(),
            Container(
              width: double.infinity,
              child: Text(
                "Last Seen 2 days ago",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: double.infinity,
              height: 230,
            ),
            MiddleRow()
          ],
        ),
      ),
    );
  }
}
