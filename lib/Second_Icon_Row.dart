import 'package:flutter/material.dart';

class IconButtonDollar extends StatefulWidget {
  const IconButtonDollar({Key? key}) : super(key: key);

  @override
  State<IconButtonDollar> createState() => _IconButtonDollarState();
}

class _IconButtonDollarState extends State<IconButtonDollar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: IconButton(
          icon: const Icon(Icons.attach_money,
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
