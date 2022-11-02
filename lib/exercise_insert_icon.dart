import 'package:flutter/material.dart';

class Exercise_insert_icon extends StatelessWidget {
  const Exercise_insert_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon"),
      ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Back to page",style: TextStyle(color: Colors.pink,fontSize: 30.00),)),
              Container(
                  alignment: Alignment.center,
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.zero,bottomLeft: Radius.zero,bottomRight: Radius.circular(30.0))
                  ),
                  child: Icon(Icons.account_box,size: 100.0,color: Colors.black,)
              ),
            ],
          ),
        )
    );
  }
}