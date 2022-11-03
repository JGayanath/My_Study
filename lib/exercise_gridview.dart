import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 2 / 1,
        ),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          buildContainer(
            color: Colors.amber,
          ),
          buildContainer(
            color: Colors.green,
          ),
          buildContainer(color: Colors.red),
          buildContainer(color: Colors.blue),
          buildContainer(color: Colors.pink),
          buildContainer(color: Colors.grey),
          buildContainer(color: Colors.lightGreen),
          buildContainer(color: Colors.teal),
        ],
      ),
    ));
  }

  Container buildContainer({required MaterialColor color}) {
    return Container(
      color: color,
    );
  }
}
