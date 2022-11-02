import 'package:flutter/material.dart';

class Exercise_image_assets extends StatelessWidget {
  const Exercise_image_assets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
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
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  height: 500,
                  width: 5000,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/zxd.jpg",)
                        )
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}