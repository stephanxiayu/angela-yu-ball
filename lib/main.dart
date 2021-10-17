import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {


  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

int ballNumber=1;

void ballNumberChange(){
  setState(() {
    ballNumber =Random().nextInt(5)+1;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.green,elevation: 9,
      title: Center(child: Text("Ask your stupid question")),),
      backgroundColor: Colors.green,
      body: Center(child: FlatButton(child: Image.asset("lib/images/ball$ballNumber.png"),
        
        color: Colors.green,
        onPressed: (){ballNumberChange();},),),

      
      
    );
  }
}