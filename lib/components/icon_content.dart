import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          //color: Color(0xff8d8e8d),
        ),
        SizedBox(height: 15),
        Text(
          label,
          textAlign: TextAlign.center,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
