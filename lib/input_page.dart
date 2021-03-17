import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'column_card_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80;
const activeColorCard = Color(0xFF1D1E33);
const inactiveColorCard = Color(0xFF111328);
const colorBaseContainer = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  female,
  male,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? activeColorCard
                        : inactiveColorCard,
                    childCard: ColumnCardContent(
                        finalIcon: FontAwesomeIcons.mars, finalText: 'Male'),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? activeColorCard
                        : inactiveColorCard,
                    childCard: ColumnCardContent(
                        finalIcon: FontAwesomeIcons.venus, finalText: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableWidget(color: activeColorCard),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(color: activeColorCard),
                ),
                Expanded(
                  child: ReusableWidget(color: activeColorCard),
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
