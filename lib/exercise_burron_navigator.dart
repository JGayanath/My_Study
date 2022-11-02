
import 'package:flutter/material.dart';

import 'exercise_column_icons.dart';
import 'exercise_image_assets.dart';
import 'exercise_insert_icon.dart';

class Exercise_Button_Navigator extends StatefulWidget {
  const Exercise_Button_Navigator({Key? key}) : super(key: key);

  @override
  State<Exercise_Button_Navigator> createState() => _Exercise_Button_NavigatorState();
}

class _Exercise_Button_NavigatorState extends State<Exercise_Button_Navigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.pink,
                padding: EdgeInsets.all(10.0),
              ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise_image_assets()));
                },
                child: Text("Outline Button",style: TextStyle(fontSize: 25.0),)),
            SizedBox(height: 25.0,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise_insert_icon()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(10.0),
              ),
              child: Text("ElevatedButton",style: TextStyle(color: Colors.amber,fontSize: 25.0),),),
            SizedBox(height: 25.0,),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise_Column_Icons()));

                },
              style: TextButton.styleFrom(
                primary: Colors.green
              ),
                child: Text("TextButton",style: TextStyle(fontSize: 30.0),),)

          ],
        ),
      ),
    );
  }
}
