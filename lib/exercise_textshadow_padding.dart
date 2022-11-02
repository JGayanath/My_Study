import 'package:flutter/material.dart';

class Exercise_textshadow_padding extends StatelessWidget {
  const Exercise_textshadow_padding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 10.0,top: 10.0),
          child: Container(
            padding: EdgeInsets.only(top: 100.0 , bottom: 100.0),
            height: 500,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(topLeft:Radius.zero,topRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0),bottomRight: Radius.zero)
            ),
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text("FLUTTER",style: TextStyle(fontSize: 40.0,fontWeight:FontWeight.w600,shadows: [
                Shadow(
                  color: Colors.white,
                  offset: Offset(10,10),
                )
              ],),
              ),
            ),
          )
      ),
    );
  }
}