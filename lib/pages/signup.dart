import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proevent/component/mybuttomsignup.dart';
import '../component/custom_scafflod.dart';
import '../component/mytexte_field.dart';

class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();

}
class _SignUpState extends  State<SignUp>{
  final usernameController= TextEditingController();
  final passwordController= TextEditingController();
  final emailController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScafflod(
        child:Column(
        children: [
        Expanded(
        flex :1,
        child: SizedBox(
        height: 10,
    ),
    ),
    Expanded(
        flex: 7,
         child:   Container(
          decoration:   BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),),
    ),
         child: Center(
         child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         SizedBox( height: 50),
      Text("Get Started !",style: TextStyle(fontSize: 40, color: Colors.black),),
      const SizedBox(height: 25),
      MyTextField(
        controller: usernameController,
        hintText: 'UserName',
        obscureText: false,
      ),
      const SizedBox( height: 10),
           MyTextField(
             controller: emailController,
             hintText: 'Email',
             obscureText: true,
           ),
           const SizedBox( height: 10),
      MyTextField(
        controller: passwordController,
        hintText: 'Password',
        obscureText: true,
      ),
      const SizedBox( height: 10),
      Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
      ),
      const SizedBox( height: 10),
      MyButtonSignUp(
      ),
      const SizedBox( height: 50),
      ],
      ),
    ),
    ),)
    ],
    ),
    );
  }
}
