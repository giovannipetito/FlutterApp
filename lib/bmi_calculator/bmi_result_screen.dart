import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/reusable_card.dart';
import 'package:flutter_app/values/colors.dart';
import 'package:flutter_app/values/styles.dart';

class BMIResultScreen extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  BMIResultScreen(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

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
          Expanded(
            flex: 5,
            child: ReusableCard(
              mColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            text: 'RE-CALCULATE',
            darkMode: true,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
