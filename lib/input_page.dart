import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'column_card_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? kActiveColorCard
                        : kInactiveColorCard,
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
                        ? kActiveColorCard
                        : kInactiveColorCard,
                    childCard: ColumnCardContent(
                        finalIcon: FontAwesomeIcons.venus, finalText: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableWidget(
              color: kActiveColorCard,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Text', style: kTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kTextBold,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 250,
                        onChanged: (newHeight) {
                          setState(() {
                            height = newHeight.toInt();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableWidget(color: kActiveColorCard),
                ),
                Expanded(
                  child: ReusableWidget(color: kActiveColorCard),
                ),
              ],
            ),
          ),
          Container(
            color: kColorBaseContainer,
            margin: EdgeInsets.only(
              top: 20,
            ),
            height: kBottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
