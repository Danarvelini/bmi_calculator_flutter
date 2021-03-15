import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

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
          style: textStyle,
        ),
      ],
    );
  }
}
