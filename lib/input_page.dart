import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double widgetsIndent = 8.0;
const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xff1b5e20);
const Color bottomContainerColor = Color(0xffc9bc1f);

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
        children: [
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

// Чтоб вынести виджет нужно выбрать в Flutter Outline -> Extract Widget...
// После чего будет автоматически создан новый класс из выбранного виджета
class ReusableCard extends StatelessWidget {
  // Чтоб сделать параметр обязательным нужно добавить @required
  ReusableCard({@required this.cardColor, this.cardChild});

  // final в начале означает, что данный параметр неизменный, после создания
  // экземпляра каласса уже нельзя будет поменять это свойство, т.е. класс
  // станет @immutable т.к. он наследуется от StatelessWidget. Есть только один
  // путь изменить StatelessWidget - уничтожить старый и создать новый
  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(widgetsIndent),
      padding: EdgeInsets.all(widgetsIndent * 2),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
