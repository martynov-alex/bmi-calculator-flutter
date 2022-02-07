import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});

  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle, style: kLargeTextStyle)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: kWidgetsIndent),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
