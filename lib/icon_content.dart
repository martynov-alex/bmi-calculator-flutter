import 'package:flutter/material.dart';

const TextStyle labelTextStyle = TextStyle(
  fontSize: 18,
  letterSpacing: 1.0,
  color: Colors.white,
);

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
