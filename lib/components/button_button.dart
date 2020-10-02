import 'package:flutter/material.dart';

import '../constants.dart';

class CalculateWidget extends StatelessWidget {
  CalculateWidget({@required this.onPress, @required this.text});

  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBottomButtonText,
          ),
        ),
        color: kBottomColorBar,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.press, this.iconData});

  IconData iconData;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData, color: Colors.white),
      onPressed: press,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C3F5E),
    );
  }
}
