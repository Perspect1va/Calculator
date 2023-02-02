import 'package:flutter/material.dart';

class Value1 extends StatefulWidget {
  const Value1({Key? key}) : super(key: key);

  @override
  State<Value1> createState() => _Value1State();
}

class _Value1State extends State<Value1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), icon: Icon(Icons.currency_bitcoin)),
        ),
    );
  }
}
