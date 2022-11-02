import 'package:flutter/material.dart';

class Exercise_image_network extends StatelessWidget {
  const Exercise_image_network({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              height: 1000,
              width: 1000,
              child: Container(
                width: 500,
                height: 500,
                child: Image.network("https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/",fit: BoxFit.scaleDown,),
              )
          ),
        )
    );
  }
}