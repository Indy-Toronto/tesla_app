// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LastSeenLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
