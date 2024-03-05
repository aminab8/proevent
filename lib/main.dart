import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proevent/pages/choose_page.dart';
import 'package:proevent/pages/welcome.dart';
import 'package:proevent/view/login.dart';


void main (){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return GetMaterialApp(
  debugShowCheckedModeBanner: false,
  home: ChoosePage(),
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => ChoosePage()),
          GetPage(name: '/admin', page: () => Welcome()),
          GetPage(name: '/employee', page: ()=> LoginPage()),
        ],
  );
  }
  }



