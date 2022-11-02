import 'package:flutter/material.dart';

class Exercise_ListView extends StatefulWidget {
  const Exercise_ListView({Key? key}) : super(key: key);

  @override
  State<Exercise_ListView> createState() => _Exercise_ListViewState();
}

class _Exercise_ListViewState extends State<Exercise_ListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: ListView(
        children: [
          buildContainer(number:"1" , color: Colors.red),
          buildContainer(number:"2" , color: Colors.pink),
          buildContainer(number:"3" , color: Colors.blue),
          buildContainer(number:"4" , color: Colors.black),
        ],
      ),
    );
  }

  Container buildContainer( {required String number , required Color color}) {
    return Container(
          height: 200,
          margin: EdgeInsets.all(10),
          color: color,
          child: Center(
            child: Text(
              number,
              style: TextStyle(fontSize: 40),
            ),
          ),
        );
  }
}

