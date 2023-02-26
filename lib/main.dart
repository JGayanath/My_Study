
import 'package:first_app/stripe/payment_gateway.dart';
import 'package:first_app/stripe/provider/payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'animate.dart';
import 'exercise_backgroundcolour_boxshape.dart';
import 'exercise_burron_navigator.dart';
import 'exercise_button.dart';
import 'exercise_center.dart';
import 'exercise_border.dart';
import 'exercise_border_radius.dart';
import 'exercise_changefont_underline.dart';
import 'exercise_child_container.dart';
import 'exercise_column_icons.dart';
import 'exercise_gridview.dart';
import 'exercise_image_assets.dart';
import 'exercise_insert_icon.dart';
import 'exercise_listview.dart';
import 'exercise_listview_builder.dart';
import 'exercise_login.dart';
import 'exercise_margin.dart';
import 'exercise_rotation.dart';
import 'exercise_row.dart';
import 'exercise_stack.dart';
import 'exercise_textfield.dart';
import 'exercise_textshadow_padding.dart';
import 'package:provider/provider.dart';

void main()async{

  //----load oure .env file that contain required key
  await dotenv.load(fileName: "assets/.env");
  //--- assing publisherble key flutter stripe
  Stripe.publishableKey = dotenv.env["PUBLISHAVLE_KEY"]!;
 runApp(MultiProvider(
   providers: [
     ChangeNotifierProvider(create: (_) => PaymentProvider()),
   ],
   child: MyApp(),
 ));

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Payment();
  }

}