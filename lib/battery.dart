// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BatteryRow extends StatelessWidget {
  const BatteryRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.batteryEmpty,
          color: Colors.grey.shade700,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "10 km",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
