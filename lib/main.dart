// import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Dicee App',
            ),
          ),
        ),
        body: DiceAppPage(),
      ),
    ),
  );
}

class DiceAppPage extends StatefulWidget {
  const DiceAppPage({Key? key}) : super(key: key);

  @override
  State<DiceAppPage> createState() => _DiceAppPageState();
}

class _DiceAppPageState extends State<DiceAppPage> {
  int Leftdicenumber = 1;
  int RightDiceNumber = 1;
  void changeDice() {
    setState(() {
      Leftdicenumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$Leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$RightDiceNumber.png'),
              onPressed: () {
                changeDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
