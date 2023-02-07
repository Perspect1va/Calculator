import 'package:flutter/material.dart';

class IconButtonBitcoin extends StatefulWidget {
  const IconButtonBitcoin({Key? key}) : super(key: key);

  @override
  State<IconButtonBitcoin> createState() => _IconButtonBitcoinState();
}

class _IconButtonBitcoinState extends State<IconButtonBitcoin> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: IconButton(
          icon: const Icon(Icons.currency_bitcoin,
              color: Colors.white, size: 35),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Валюта'),
                          Row(
                            children: <Widget>[
                              TextButton(
                                child: const Text('Close BottomSheet',
                                    style: TextStyle(fontSize: 30)),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ));
  }
}