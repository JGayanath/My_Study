import 'package:flutter/material.dart';

class Exercise_border extends StatelessWidget {
  const Exercise_border({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        )
    );
  }
}