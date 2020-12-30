import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter dice',
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage();

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _number = 1;
  int _number2 = 1;
  void call() {
    setState(() {
      _number = Random().nextInt(6) + 1;
      _number2 = Random().nextInt(6) + 1;
    });
  }

  @override
  void initState() {
    _number = 6;
    _number2 = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'TAP ON THE DICE',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {call()},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.transparent,
                          style: BorderStyle.solid,
                          width: 5.0,
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.orangeAccent,
                        //       spreadRadius: 5,
                        //       blurRadius: 7,
                        //       offset: Offset(0, 3))
                        // ],
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: _number2 > 1 ? 40 : 0,
                                width: _number2 > 1 ? 40 : 0,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: _number2 == 6 ? 40 : 0,
                                width: _number2 == 6 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              Container(
                                height: _number2 >= 4 ? 40 : 0,
                                width: _number2 >= 4 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: _number2 % 2 == 0 ? 0 : 40,
                                width: _number2 % 2 == 0 ? 0 : 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: _number2 >= 4 ? 40 : 0,
                                width: _number2 >= 4 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              Container(
                                height: _number2 == 6 ? 40 : 0,
                                width: _number2 == 6 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              Container(
                                height: _number2 > 1 ? 40 : 0,
                                width: _number2 > 1 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.transparent,
                          style: BorderStyle.solid,
                          width: 5.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: _number > 1 ? 40 : 0,
                                width: _number > 1 ? 40 : 0,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: _number == 6 ? 40 : 0,
                                width: _number == 6 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              Container(
                                height: _number >= 4 ? 40 : 0,
                                width: _number >= 4 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: _number % 2 == 0 ? 0 : 40,
                                width: _number % 2 == 0 ? 0 : 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: _number >= 4 ? 40 : 0,
                                width: _number >= 4 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              Container(
                                height: _number == 6 ? 40 : 0,
                                width: _number == 6 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              Container(
                                height: _number > 1 ? 40 : 0,
                                width: _number > 1 ? 40 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Dice score ${_number + _number2}',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
