import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice1 = 1;
  int dice2 = 1;

  void change() {
    dice1 = Random().nextInt(6) + 1;
    dice2 = Random().nextInt(6) + 1;
  }

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
      body: Center(
        child: Row(
          children: [
            Diceimage(
              dice1, // == 0 ? 1 :dice1,
            ),
            Diceimage(
              dice2, // == 0 ? 1 :dice2,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Diceimage extends StatefulWidget {
  Diceimage(
    this.index, {
    Key? key,
  }) : super(key: key);

  int index;
  //void Function()? onTap;

  @override
  State<Diceimage> createState() => _DiceimageState();
}

class _DiceimageState extends State<Diceimage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            widget.index = Random().nextInt(6) + 1;
          });
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child:
              Image.asset('dice${widget.index}.png'), // == 0 ? 1 : widget.index
        ),
      ),
    );
  }
}
