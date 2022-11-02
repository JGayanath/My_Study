import 'package:flutter/material.dart';

class Exercis_margin extends StatelessWidget {
  const Exercis_margin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Transform.rotate(
            angle: 0.1,
            child: Container(
                alignment: Alignment.centerLeft,
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.zero,bottomLeft: Radius.zero,bottomRight: Radius.circular(30.0))
                ),
                child: Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 50.0),
                  child: Text("END!",style: TextStyle(fontSize:40.0,backgroundColor: Colors.white,fontWeight: FontWeight.bold),),
                )
            ),
          ),
        )
    );
  }
}