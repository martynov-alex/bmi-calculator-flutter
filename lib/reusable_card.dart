import 'package:flutter/material.dart';
import 'constants.dart';

// Чтоб вынести виджет нужно выбрать в Flutter Outline -> Extract Widget...
// После чего будет автоматически создан новый класс из выбранного виджета
class ReusableCard extends StatelessWidget {
  // Чтоб сделать параметр обязательным нужно добавить @required
  ReusableCard({
    @required this.cardColor,
    this.cardChild,
    this.onPress,
  });

  // final в начале означает, что данный параметр неизменный, после создания
  // экземпляра каласса уже нельзя будет поменять это свойство, т.е. класс
  // станет @immutable т.к. он наследуется от StatelessWidget. Есть только один
  // путь изменить StatelessWidget - уничтожить старый и создать новый
  final Color cardColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kWidgetsIndent),
        padding: EdgeInsets.all(kWidgetsIndent * 2),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
