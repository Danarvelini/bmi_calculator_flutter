import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'column_card_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80;
const colorBaseCard = Color(0xFF1D1E33);
const colorBaseContainer = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    color: colorBaseCard,
                    childCard: ColumnCardContent(
                        finalIcon: FontAwesomeIcons.mars, finalText: 'Male'),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    color: colorBaseCard,
                    childCard: ColumnCardContent(
                        finalIcon: FontAwesomeIcons.venus, finalText: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableWidget(color: colorBaseCard),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(color: colorBaseCard),
                ),
                Expanded(
                  child: ReusableWidget(color: colorBaseCard),
                ),
              ],
            ),
          ),
          Container(
            color: colorBaseContainer,
            margin: EdgeInsets.only(
              top: 20,
            ),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
