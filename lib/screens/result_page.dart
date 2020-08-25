import 'package:bmi_calculator/components/ReuseableCard.dart';
import 'package:bmi_calculator/components/buttomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.interpretation, this.result});
  final String bmi;
  final String interpretation;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  child: Text(
                    'Your Result',
                    style: kTitleStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: inactive,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result,
                      style: kResultText,
                    ),
                    Text(
                      bmi,
                      style: kBmiText,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyText,
                    )
                  ],
                ),
              ),
            ),
            ButtomButton(
              btnLable: 'RE-CALCULATE',
              Ontap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
