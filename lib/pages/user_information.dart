import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:proevent/pages/welcome.dart';
import '../component/custom_scafflod.dart';
class UserInformation extends StatelessWidget{
  var username;
  var password ;
  UserInformation({ required this.username, required this.password}) ;
  @override
  Widget build(BuildContext context) {
    return  CustomScafflod(
      child: Column( children:[
        Expanded(
        flex: 10,
        child:   Container(
        decoration:   BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50.0),
    topRight: Radius.circular(50.0),),
    ),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text('Name: ${username}',style: TextStyle(fontSize: 20,color: Colors.black),),
    Text('password: ${password}',style: TextStyle(fontSize: 20,color: Colors.black),),
      ],
    ),
    ),
    ),
      ),
        Expanded(child: Container(
          child:Column(children: <Widget>[
            BottomNavigationBar(
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
             onTap: (int value){ Get.to( Welcome());},
              elevation: 0,
              iconSize: 32,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',),
                BottomNavigationBarItem(icon: Icon(Icons.settings,),label: 'Settings',),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined,),label: 'Events',),
              ],),
          ],),
        ),),
      ],
      ),
    );
  }

}

