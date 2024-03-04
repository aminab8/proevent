import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:proevent/pages/addevents.dart';
import 'package:proevent/pages/welcome.dart';
import '../component/custom_scafflod.dart';

class UserInformation extends StatefulWidget {
  final String username;
  final String password;
  final String email;

  UserInformation(
      {required this.username, required this.password, required this.email});

  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  int selectedindex = 0;


  @override
  Widget build(BuildContext context) {
    return CustomScafflod(

      child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              decoration:  const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Name: ${widget.username}',
                      style: TextStyle(fontSize: 20, color: Colors.black, height: 10),
                    ),
                    Text('password: ${widget.password}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text('email  : ${widget.email}',
                      style: TextStyle(fontSize: 20, color: Colors.black, height: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomNavigationBar(
            onTap: (val) {
              setState(() {
                selectedindex = val;
              });
              switch (val) {
                case 0:
                  Get.to(() => Welcome());
                  break;
                case 1:
                  Get.to(() => AddEvents());
                  break;

              }

            },
            currentIndex: selectedindex,
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black87,
            selectedFontSize: 16,
            unselectedFontSize: 10,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
              BottomNavigationBarItem(icon: Icon(Icons.event), label: "event"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        ],
      ),
    );
  }

}