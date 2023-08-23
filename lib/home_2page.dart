import 'dart:math';
import 'package:flutter/material.dart';

class Home2Page extends StatelessWidget {
  const Home2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff5353),
      appBar: AppBar(
        backgroundColor: Color(0xffff5353),
        centerTitle: true,
        title: Text(
          'Dice App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = 1;
  int dice2 = 1;

  void change() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  change();
                },
                child: Image.asset('dice$dice1.png'),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  change();
                },
                child: Image.asset('dice$dice2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
