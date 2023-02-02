// ignore: avoid_web_libraries_in_flutter
import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: IconButton(
          onPressed: () {showMyAlertDialog();},
          icon: Icon(
            Icons.currency_bitcoin,
            color: Colors.white,
            size: 35,
          ),)
    ),
  ));
}

showMyAlertDialog(BuildContext context) {
  var bitcoin = Values("Bitcoin");
  var xrp = Values("XRP");
  var ton = Values("TON");

  // Create SimpleDialog
  SimpleDialog(
    title: const Text('Выберите валюту:'),
    children: <Widget>[
      SimpleDialogOption(
          onPressed: () {
            // Close and return value
            Navigator.pop(context, bitcoin);
          },
          child: Text(bitcoin.name)),
      SimpleDialogOption(
        onPressed: () {
          // Close and return value
          Navigator.pop(context, xrp);
        },
        child: Text(xrp.name),
      ),
      SimpleDialogOption(
        onPressed: () {
          // Close and return value
          Navigator.pop(context, ton);
        },
        child: Text(ton.name),
      )
    ],
  );
  // Call showDialog function to show dialog.
}

class Values {
  String name;

  Values(this.name);
}
