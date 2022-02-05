import 'package:flutter/material.dart';

const double widgetsIndent = 8.0;

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
        // border: Border.all(
        //   color: Colors.black,
        //   width: 8,
        // ),
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
