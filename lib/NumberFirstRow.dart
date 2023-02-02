import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumbersSecondRow extends StatefulWidget {
  @override
  State<NumbersSecondRow> createState() => _NumbersSecondRowState();
}

class _NumbersSecondRowState extends State<NumbersSecondRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100, // Не забудь поменять на 110
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(35),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child: Text(style: TextStyle(fontSize: 35),"."), // Точка
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(35),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child: FaIcon(FontAwesomeIcons.zero, size: 20), // Нуль
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(35),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child: FaIcon(FontAwesomeIcons.deleteLeft, size: 20), // Удалить
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(35),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child: FaIcon(FontAwesomeIcons.equals, size: 25), // Равно
            ),
          )
        ],
      ),
    );
  }
}
