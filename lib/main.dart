
import 'package:first_app/exercise_image_network.dart';
import 'package:first_app/exercise_listview_extract_widgets.dart';
import 'package:flutter/material.dart';

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

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack_Widgtes();
  }

}