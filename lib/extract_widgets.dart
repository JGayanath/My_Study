


import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Extract_Widgets extends StatelessWidget {
   Extract_Widgets({
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  String text;
  final color;

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      duration: Duration(microseconds: 1500),
      child: Container(
        height: 200,
        margin: EdgeInsets.all(10),
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}