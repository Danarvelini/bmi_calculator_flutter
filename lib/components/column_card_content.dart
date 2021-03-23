import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ColumnCardContent extends StatelessWidget {
  ColumnCardContent({@required this.finalIcon, @required this.finalText});
  final IconData finalIcon;
  final String finalText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(finalIcon, size: 80),
        SizedBox(height: 15),
        Text(
          finalText,
          style: kTextStyle,
        ),
      ],
    );
  }
}
