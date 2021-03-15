import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.color, this.childCard});
  final Color color;
  final Widget childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
