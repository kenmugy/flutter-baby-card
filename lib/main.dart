import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text(
            "Kitiibwa App",
            style: TextStyle(
                letterSpacing: 5.0,
                fontFamily: "DancingScript",
                fontWeight: FontWeight.bold),
          )),
        ),
        body: UserPage(),
      ),
    ));

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 60.0,
          backgroundImage: AssetImage("images/im.JPG"),
        ),
        Text(
          "Jemimah Kitiibwa",
          style: TextStyle(
              letterSpacing: 5.0,
              fontFamily: "ArimaMadurai",
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        Text(
          "Baby Dice App",
          style: TextStyle(
              letterSpacing: 3.0,
              fontFamily: "DancingScript",
              fontWeight: FontWeight.w200,
              fontSize: 18),
        ),
        SizedBox(
            width: 250.0,
            child: Divider(
              thickness: 2,
            )),
        DicePage()
      ],
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rDiceNum = 1;
  int lDiceNum = 1;
  void handlePress() {
    setState(() {
      rDiceNum = Random().nextInt(6) + 1;
      lDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
              onPressed: () => handlePress(),
              child: Image.asset("images/dice$rDiceNum.png")),
        ),
        Expanded(
          child: FlatButton(
              onPressed: () => handlePress(),
              child: Image.asset("images/dice$lDiceNum.png")),
        ),
      ],
    );
  }
}
