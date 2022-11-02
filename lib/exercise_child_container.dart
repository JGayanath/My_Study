import 'package:flutter/material.dart';

class Exercise_child_container extends StatelessWidget {
  const Exercise_child_container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
              alignment: Alignment.center,
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(width: 10.0,color: Colors.black),
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.zero,bottomLeft: Radius.zero,bottomRight: Radius.circular(30.0))
              ),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(width: 10.0,color: Colors.redAccent)
                ),
              )
          ),
        )
    );
  }
}