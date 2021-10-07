import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    var ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Ask Me Anything(In your head lol)'),
        ),
        body: SafeArea(
            child: Container(
                color: Colors.blue[300],
                child: Center(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            ballNum = Random().nextInt(5) + 1;
                          });
                          // print('images/ball$ballNum.png');
                        },
                        child: Image.asset('images/ball$ballNum.png'))))));
  }
}
