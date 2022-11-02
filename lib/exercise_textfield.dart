
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Exercise_TextField extends StatefulWidget {
  const Exercise_TextField({Key? key}) : super(key: key);

  @override
  State<Exercise_TextField> createState() => _Exercise_TextFieldState();
}

class _Exercise_TextFieldState extends State<Exercise_TextField> {

  final _userName = TextEditingController();
  final _userPassword = TextEditingController();
  final _userPhoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Text("User Name",style: TextStyle(fontSize: 20.0),),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _userName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)) ,
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  cursorRadius: Radius.circular(10.0),
                  cursorColor: Colors.pink,
                  style: TextStyle(fontSize: 20.0,color: Colors.amber),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Password",style: TextStyle(fontSize: 20.0),),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: _userPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)) ,
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  cursorRadius: Radius.circular(10.0),
                  cursorColor: Colors.pink,
                  style: TextStyle(fontSize: 20.0,color: Colors.amber),
                ),
                SizedBox(height: 20.0,),

                Text("Phone Number",style: TextStyle(fontSize: 20.0),),

                SizedBox(height: 20.0,),

                TextField(
                  controller: _userPhoneNumber,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)) ,
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  cursorRadius: Radius.circular(10.0),
                  cursorColor: Colors.pink,
                  style: TextStyle(fontSize: 20.0,color: Colors.amber),
                ),
                SizedBox(height:  20.0,),

                ElevatedButton(onPressed: (){
                 if(validation()){
                   AwesomeDialog(
                       context: context,
                       dialogType: DialogType.success,
                       animType: AnimType.rightSlide,
                       title: 'success',
                       desc: 'Data saved.............',
                       btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                  )..show();
                 }else{
                   AwesomeDialog(
                     context: context,
                     dialogType: DialogType.question,
                     animType: AnimType.rightSlide,
                     title: 'Unsuccess',
                     desc: 'Data Not saved.............',
                     btnCancelOnPress: () {},
                     btnOkOnPress: () {},
                   )..show();
                 }

                }, child: Text("Save")),

              ],
            ),
          ),
        ));
  }
  bool validation(){
    bool isState=false;
    if(_userPassword.text.length>8 && (_userPhoneNumber.text.startsWith("071")||(_userPhoneNumber.text.startsWith("076")))){
      return isState=true;
    }
    return isState;
  }
}
