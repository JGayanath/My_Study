import 'package:flutter/material.dart';

class Exercise_Listview_Builder_basic extends StatelessWidget {
  const Exercise_Listview_Builder_basic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.all(8.0),
                width: 200,
                height: 100,
                color: Colors.amber,
            child: Center(
              child: Text(
                index.toString(),style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            ),
              )),
    );
  }
}
