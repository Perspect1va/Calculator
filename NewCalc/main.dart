import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'ButtonForSwitch.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const Calculator2());
}

class Calculator2 extends StatefulWidget {
  const Calculator2({Key? key}) : super(key: key);

  @override
  State<Calculator2> createState() => _Calculator2State();
}

class _Calculator2State extends State<Calculator2> {
  Widget Calcbutton(
      String numbercalc, Color? calccolor, Color txtcolor, double size) {
    return ElevatedButton(
      onPressed: () {
        calculation(numbercalc);
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(35),
        backgroundColor: calccolor, // <-- Button color
      ),
      child: Text(numbercalc,
          style: TextStyle(fontSize: size, color: txtcolor)), // Удалить
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('Конвертер', style: TextStyle(color: Colors.white))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
            /// Кнопочки в калькуляторе
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: () {showMyAlertDialog(context);},
                              icon: const Icon(
                                Icons.currency_bitcoin,
                                color: Colors.white,
                                size: 35,
                              ))),
                      Expanded(
                          flex: 3,
                          child: Text(
                            '$text',
                            style: const TextStyle(color: Colors.white, fontSize: 30),
                          ))
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(children: <Widget>[
                Expanded(
                    child: Row(
                  children: const <Widget>[
                    Icon(Icons.attach_money, color: Colors.white, size: 40),
                  ],
                )),
              ]),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child:
                          Calcbutton('7', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('8', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('9', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('?', Colors.grey[900], Colors.blue, 25)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child:
                          Calcbutton('4', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('5', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('6', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('+', Colors.grey[900], Colors.green, 25)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child:
                          Calcbutton('1', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('2', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('3', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child: Calcbutton('-', Colors.grey[900], Colors.red, 25)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child:
                          Calcbutton('.', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('0', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('AC', Colors.grey[900], Colors.white, 25)),
                  Expanded(
                      child:
                          Calcbutton('=', Colors.grey[900], Colors.white, 25)),
                ],
              ),
            ]),
      ),
    ));
  }

  dynamic text = '0';

  /// вывод текста (конечный результат)
  double numOne = 0;

  /// Первое слогаемое
  double numTwo = 0;

  /// Второе слогаемое

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';

  /// Первое возможное действие(Знак равно)
  /// Второе действие(Второе возможное действие: умножение, деление, сложение, вычитание)

  dynamic preOpr = '';

  /// Первое возможное действие(Умножение, деление, сложение, вычитание)
  /// Второе действие(Второе возможное действие: знак равно)

  void calculation(String numbercalc) {
    /// Метод, который принимает String значение(Знак выражения, числовое значение, и т.п.)
    if (numbercalc == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
    } else if (opr == '=' && numbercalc == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (numbercalc == '+' ||
        numbercalc == '-' ||
        numbercalc == 'x' ||
        numbercalc == '/' ||
        numbercalc == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = numbercalc;
      result = '';
    } else if (numbercalc == '.') {
      if (!result.toString().contains('.')) {
        result = '$result.';
      }
      finalResult = result;
    } else if (numbercalc == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-$result';
      finalResult = result;
    } else {
      result = result + numbercalc;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    /// Операция сложения
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    /// Операция вычитания
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    /// Операция умножения
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    /// Операция деления
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0)) {
        return result = splitDecimal[0].toString();
      }
    }
    return result;
  }
}
