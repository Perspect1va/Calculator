import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NumbersFirstRow extends StatefulWidget {


  @override
  State<NumbersFirstRow> createState() => _NumbersFirstRowState();
}

class _NumbersFirstRowState extends State<NumbersFirstRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 600,
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
              child:  FaIcon(FontAwesomeIcons.one, size: 20),
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
              child:  FaIcon(FontAwesomeIcons.two, size: 20),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(38),
                backgroundColor: Colors.blue, // <-- Button color
              ),
              child:  FaIcon(FontAwesomeIcons.three, size: 20),
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
              child: FaIcon(FontAwesomeIcons.minus, size: 20),
            ),
          )
        ],
      ),
    );
  }
}
