import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MiddleRow extends StatelessWidget {
  const MiddleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          FontAwesomeIcons.lock,
          color: Colors.grey.shade500,
        ),
        Icon(
          FontAwesomeIcons.fan,
          color: Colors.grey.shade500,
        ),
        Icon(
          FontAwesomeIcons.music,
          color: Colors.grey.shade500,
        ),
        Icon(
          FontAwesomeIcons.bolt,
          color: Colors.grey.shade500,
        )
      ],
    );
  }
}
