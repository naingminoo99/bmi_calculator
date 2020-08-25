import 'package:flutter/material.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.btnLable, @required this.Ontap});
  final String btnLable;
  final Function Ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        color: Color(0xFFEB1555),
        height: 80,
        width: double.infinity,
        child: Center(
          child: Text(
            btnLable,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
