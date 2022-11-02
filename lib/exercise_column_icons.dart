import 'package:flutter/material.dart';


class Exercise_Column_Icons extends StatelessWidget {
  const Exercise_Column_Icons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          //mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Back to page",style: TextStyle(color: Colors.pink,fontSize: 30.00),)),
            Icon(Icons.account_box,size: 100.0,),
            Icon(Icons.access_time_filled_rounded,size: 100.0,),
            Icon(Icons.account_balance,size: 100.0,),
            Icon(Icons.accessibility_new,size: 100.0,),
            Icon(Icons.account_balance_rounded,size: 100.0,),
          ],
        ),
      ),
    );
  }
}
