import 'package:flutter/material.dart';

class Exercise_backgroudcolor_boxshape extends StatelessWidget {
  const Exercise_backgroudcolor_boxshape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
              child: Text("PRO_KIDS",style: TextStyle(fontSize: 30.0, backgroundColor: Colors.pink ),),
              alignment: Alignment.center,
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle
              )
          ),
        )
    );
  }
}