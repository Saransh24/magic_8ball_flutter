import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const Ball8(),
      ),
    ),
  );
}

class Ball8 extends StatefulWidget {
  const Ball8({ Key? key }) : super(key: key);

  @override
  State<Ball8> createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {

  int ballNumber=1;
  void changeNumber(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: (){
            changeNumber();
          },
          child: Image.asset('images/ball$ballNumber.png')
        ),
      ),
    );
  }
}