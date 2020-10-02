import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/button_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.getResult,
    @required this.resultText,
    @required this.description,
  });
  final String getResult;
  final String resultText;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your Result:',
            style: kTitleStyle,
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childContainer: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultStyle,
                  ),
                  Text(
                    getResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    description,
                    style: kBottomText,
                  )
                ],
              ),
            ),
          ),
          CalculateWidget(
            onPress: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
