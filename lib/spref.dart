import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Spref extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController textcontroller = TextEditingController();
  return Scaffold(
    body: Column(
      children: [
        TextField(
          controller:textcontroller,
        ),
        ElevatedButton(onPressed: ()async {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString("name", textcontroller.text.toString());
        }, child: Text("Save"))
      ],
    )
    
   
    
  );
  }
}