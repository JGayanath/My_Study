
import 'package:flutter/material.dart';

class Exercise_Row extends StatelessWidget {
  const Exercise_Row({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 600,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
