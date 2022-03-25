// External imports
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tesla_app/widgets/battery.dart';
import 'package:tesla_app/widgets/lastseen.dart';
import 'package:tesla_app/widgets/middlerow.dart';
import 'package:tesla_app/widgets/tile.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BatteryRow(),
            LastSeenLine(),
            Container(
              width: double.infinity,
              height: 230,
            ),
            MiddleRow(),
            SizedBox(
              height: 22,
            ),
            Tile(
              icon: FontAwesomeIcons.car,
              name: "Control",
              subname: "",
            ),
            Tile(
              icon: FontAwesomeIcons.fan,
              name: "Climate",
              subname: "Interior 18 C",
            ),
            Tile(
              icon: FontAwesomeIcons.locationPin,
              name: "Location",
              subname: "75 Queens Street",
            ),
            Tile(
              icon: FontAwesomeIcons.check,
              name: "Security",
              subname: "Iphone Connected",
            ),
            Tile(
              icon: FontAwesomeIcons.bagShopping,
              name: "Upgrades",
              subname: "",
            )
          ],
        ),
      ),
    );
  }
}
