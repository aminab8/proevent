import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyButtonSignUp extends StatelessWidget{
  const MyButtonSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        textColor: Colors.black,
        color: Colors.blue,
        padding: EdgeInsets.all(25.0),
        onPressed: () {
          //Get.to(events());
        },
        child: Text("Sign Up " , style: TextStyle(color: Colors.black,fontSize: 18),)
    );
  }
}

