import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
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
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(width: kWidgetsIndent),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
                SizedBox(width: kWidgetsIndent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: kWidgetsIndent),
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0xffffff8b),
                            inactiveTrackColor: Color(0xffb6b6b6),
                            thumbColor: Color(0xffc9bc1f),
                            overlayColor: Color(0x29c9bc1f),
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30,
                            ),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            label: '${height.round().toString()}',
                            onChanged: (double newValue) {
                              setState(() => height = newValue.round());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: kWidgetsIndent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: kWidgetsIndent),
                Expanded(child: ReusableCard(cardColor: kActiveCardColor)),
                Expanded(child: ReusableCard(cardColor: kActiveCardColor)),
                SizedBox(width: kWidgetsIndent),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: kWidgetsIndent),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
