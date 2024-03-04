import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:proevent/pages/user_information.dart';
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
         SizedBox( height: 10),
      Text("Get Started !",style: TextStyle(fontSize: 40, color: Colors.black),),
      const SizedBox(height: 15),
      MyTextField(
        controller: usernameController,
        hintText: 'UserName',
        obscureText: false,
      ),
      const SizedBox( height: 10),
           MyTextField(
             controller: emailController,
             hintText: 'Email : ',
             obscureText: false,
           ),
           const SizedBox( height: 10),
      MyTextField(
        controller: passwordController,
        hintText: 'Password',
        obscureText: false,
      ),
      const SizedBox( height: 10),
           MyTextField(
             controller: passwordController,
             hintText: 'Confirm password',
             obscureText: false,
           ),
      const SizedBox( height: 10),
           ElevatedButton(onPressed: (){
             Get.to(UserInformation(username: usernameController.text.toString(), password: passwordController.text.toString(), email: emailController.text.toString(),));
           }

               , child: Text("sign up ")),

      ],
      ),
    ),
    ),)
    ],
    ),
    );
  }
}
