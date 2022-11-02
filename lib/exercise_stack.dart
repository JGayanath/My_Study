

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stack_Widgtes extends StatefulWidget {
  const Stack_Widgtes({Key? key}) : super(key: key);

  @override
  State<Stack_Widgtes> createState() => _Stack_WidgtesState();
}

class _Stack_WidgtesState extends State<Stack_Widgtes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            width: 400.0,
            height: 400.0,
          ),
          Container(
            color: Colors.green,
            width: 200.0,
            height: 200.0,
          ),
          Container(
            color: Colors.amber,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
