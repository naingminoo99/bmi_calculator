import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChild, this.Onpress});
  final Color colour;
  final Widget cardChild;
  final Function Onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
} //the background card
