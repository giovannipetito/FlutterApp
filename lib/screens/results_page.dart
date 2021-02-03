import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/reusable_card.dart';
import 'package:flutter_app/values/styles.dart';
import '../values/colors.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.interpretation, @required this.bmiResult, @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(flex: 5,
          child: ReusableCard(
            mColor: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(resultText.toUpperCase(),
                style: kResultTextStyle,),
                Text(bmiResult,
                style: kBMITextStyle,),
                Text(interpretation,
                textAlign: TextAlign.center,
                style: kBodyTextStyle,),
              ],
            ),
          ),
          ),
          CustomButton(text: 'RE-CALCULATE', onTap: () {
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
