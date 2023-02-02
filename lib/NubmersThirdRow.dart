import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NumbersThirdRow extends StatefulWidget {


  @override
  State<NumbersThirdRow> createState() => _NumbersThirdRowState();
}

class _NumbersThirdRowState extends State<NumbersThirdRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(40),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child:  FaIcon(FontAwesomeIcons.four, size: 20),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(40),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child:  FaIcon(FontAwesomeIcons.five, size: 20),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(40),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child:  FaIcon(FontAwesomeIcons.six, size: 20),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(39),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child: FaIcon(FontAwesomeIcons.plus, size: 20),
            ),
          )
        ],
      ),
    );
  }
}
