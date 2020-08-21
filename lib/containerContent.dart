import 'package:flutter/material.dart';
import 'constants.dart';

class containerContent extends StatelessWidget {
  containerContent({this.icon, this.label});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLableTextStyle,
        )
      ],
    );
  }
} //for the icons
