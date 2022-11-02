import 'package:flutter/material.dart';


class Exercise_changefont_underline extends StatelessWidget {
  const Exercise_changefont_underline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 500,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.zero,bottomLeft: Radius.zero,bottomRight: Radius.circular(30.0))
            ),
            child: Text("PROACADEMY",style: TextStyle(fontFamily:"Dancing Script",color:Colors.blue,fontSize:30.0,decoration: TextDecoration.underline,decorationColor: Colors.red),),
          ),
        )
    );
  }
}