
import 'package:flutter/material.dart';

class Exercise_Button extends StatefulWidget {
  const Exercise_Button({Key? key}) : super(key: key);

  @override
  State<Exercise_Button> createState() => _Exercise_ButtonState();
}



class _Exercise_ButtonState extends State<Exercise_Button> {

  Color _color = Colors.amber;
  bool isClick = false;

  bool isNumber = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isClick ? _color=Colors.red : _color=Colors.amber,
                ),
                child: Center(child: Text(isNumber?"Two" : "One",style: TextStyle(fontSize: 25.0),)),
                width: 200,
                height: 200,

              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue,padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30)),
                  onPressed: (){
                    setState(() {
                      isNumber = !isNumber;
                      });
                  },
                  child: Text("Change number",style: TextStyle(fontSize: 25.0,color: Colors.white),)),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black,padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30)),
                  onPressed: (){
                    setState(() {
                      isClick = !isClick;
                    });
                  },
                  child: Text("Change color",style: TextStyle(fontSize: 25.0,color: Colors.white),)),
            ],
          ),
        ));
  }
}
