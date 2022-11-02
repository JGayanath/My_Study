import 'package:flutter/material.dart';

class Exercise_border_radius extends StatelessWidget {
  const Exercise_border_radius({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(width: 20.0,color: Colors.black),
                color: Colors.amber,
                borderRadius: BorderRadius.only(topLeft:Radius.zero,topRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.zero)
            ),
          ),
        )
    );
  }
}