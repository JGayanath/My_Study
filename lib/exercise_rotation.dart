import 'package:flutter/material.dart';

class Exercise_rotation extends StatelessWidget {
  const Exercise_rotation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
              padding: EdgeInsets.only(left: 50.0),
              alignment: Alignment.centerLeft,
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.zero,bottomLeft: Radius.zero,bottomRight: Radius.circular(30.0))
              ),
              child: Transform.rotate(
                angle: 0.5,child:
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              )
          ),
        )
    );
  }
}