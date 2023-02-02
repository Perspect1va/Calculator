import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/NubmersThirdRow.dart';
import 'package:flutter_app/NumbersFourthRow.dart';
import 'package:flutter_app/NumbersSecondRow.dart';
import 'package:flutter_app/NumberFirstRow.dart';
import 'package:flutter_app/StringForValue1.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text('Конвертер', style: TextStyle(color: Colors.black)),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              alignment: Alignment.bottomCenter,
              child: Value1(),
            ),
            NumbersFourthRow(),
            NumbersThirdRow(),
            NumbersFirstRow(),
            NumbersSecondRow()
          ],
        )),
  ));
}
