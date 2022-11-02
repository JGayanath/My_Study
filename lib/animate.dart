
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import 'exercise_column_icons.dart';
import 'extract_widgets.dart';


class Animations extends StatelessWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      duration: Duration(seconds: 1),
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Center(
              child: Column(
                children: [
                  ZoomIn(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(height:10.0),
                  FadeIn(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height:10.0),
                  BounceInUp(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(height:10.0),
                  FlipInX(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height:10.0),
                  JelloIn(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  
                  ElevatedButton.icon(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise_Column_Icons()));
                  }, icon: 
                  Icon(Icons.navigate_next_outlined,), label:Text("")),
                ],
              ),
            ),
          )),
    );
  }
}
