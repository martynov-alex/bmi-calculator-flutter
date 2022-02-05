import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double widgetsIndent = 8.0;
const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xff1b5e20);
const Color inactiveCardColor = Color(0xff003900);
const Color bottomContainerColor = Color(0xffc9bc1f);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Color maleCardColor = inactiveCardColor;
  //Color femaleCardColor = inactiveCardColor;
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     maleCardColor = activeCardColor;
  //     femaleCardColor = inactiveCardColor;
  //   }
  //   if (selectedGender == Gender.female) {
  //     femaleCardColor = activeCardColor;
  //     maleCardColor = inactiveCardColor;
  //   }
  // }

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(width: widgetsIndent),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(Gender.male);
                        //
                        // maleCardColor == inactiveCardColor
                        //     ? maleCardColor = activeCardColor
                        //     : femaleCardColor = inactiveCardColor;
                        // femaleCardColor = inactiveCardColor;
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(Gender.female);
                        //
                        // femaleCardColor == inactiveCardColor
                        //     ? femaleCardColor = activeCardColor
                        //     : maleCardColor = inactiveCardColor;
                        // maleCardColor = inactiveCardColor;
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.female,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: widgetsIndent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(width: widgetsIndent),
                Expanded(child: ReusableCard(cardColor: activeCardColor)),
                SizedBox(width: widgetsIndent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(width: widgetsIndent),
                Expanded(child: ReusableCard(cardColor: activeCardColor)),
                Expanded(child: ReusableCard(cardColor: activeCardColor)),
                SizedBox(width: widgetsIndent),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: widgetsIndent),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
