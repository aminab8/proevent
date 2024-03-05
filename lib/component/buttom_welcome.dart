import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ButtomWelcome extends StatelessWidget{
  const ButtomWelcome({super.key,this.buttomText,this.onTap,this.color,this.textColor});
  final String? buttomText ;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
     return GestureDetector(
         onTap: (){
       Get.to(() => onTap!);
     },
     child: Container(
       padding: EdgeInsets.all(30.0),
       decoration: BoxDecoration(
         color:color!,

       ),
       child: Text(
         buttomText!,style: TextStyle(fontSize: 15.0,
           fontWeight: FontWeight.bold,color: textColor!),

       ),


     ));
  }
  
}