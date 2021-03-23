import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        child: Icon(icon),
        elevation: 0,
        constraints: BoxConstraints.tightFor(width: 40, height: 40),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E));
  }
}
