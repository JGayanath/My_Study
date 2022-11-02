
import 'package:flutter/material.dart';

import 'extract_widgets.dart';

class Exercise_Listview_Extract_Widgets extends StatelessWidget {
  const Exercise_Listview_Extract_Widgets({Key? key}) : super(key: key);

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
        Extract_Widgets(text: "1", color: Colors.amber,),
          Extract_Widgets(text: "2", color: Colors.red,),
          Extract_Widgets(text: "3", color: Colors.green,),
          Extract_Widgets(text: "4", color: Colors.pink,),
        ],
      ),
    );
  }
  }



