import 'package:flutter/material.dart';

class Exercise_Center extends StatelessWidget {
  const Exercise_Center({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 500,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(topLeft:Radius.zero,topRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.zero)
            ),
            child: Text("PROACADEMY",style: TextStyle(fontSize:40.0),),
          ),
        )
    );
  }
}