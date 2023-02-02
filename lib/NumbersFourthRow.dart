import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NumbersFourthRow extends StatefulWidget {


  @override
  State<NumbersFourthRow> createState() => _NumbersFourthRowState();
}

class _NumbersFourthRowState extends State<NumbersFourthRow> {
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
              child:  FaIcon(FontAwesomeIcons.seven, size: 20),
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
              child:  FaIcon(FontAwesomeIcons.eight, size: 20),
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
              child:  FaIcon(FontAwesomeIcons.nine, size: 20),
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
              child: FaIcon(FontAwesomeIcons.exchange, size: 20),
            ),
          )
        ],
      ),
    );
  }
}
