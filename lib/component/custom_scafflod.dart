import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScafflod extends StatelessWidget{
  const CustomScafflod({ super.key,this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
              'assets/login inn.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
           SafeArea(
              child: child!,
          ),
        ],
      ),
    );
  }
  
}