import 'package:flutter/material.dart';

void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BMIinput(),
    );
  }
}

class BMIinput extends StatefulWidget {
  @override
  _BMIinputState createState() => _BMIinputState();
}

class _BMIinputState extends State<BMIinput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Center(
        child: Text('Body'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
