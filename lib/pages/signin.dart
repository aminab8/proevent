import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proevent/component/custom_scafflod.dart';
import 'package:proevent/pages/user_information.dart';
import '../component/mytexte_field.dart';
class SignIn extends StatefulWidget{
    const  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends  State<SignIn>{
   TextEditingController usernameController= TextEditingController();
   TextEditingController  passwordController= TextEditingController();
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
                Icon(Icons.lock, size: 100),
                Text("Welcome Back !",style: TextStyle(fontSize: 40, color: Colors.black),),
                Text("please sign in to your account ", style: TextStyle(fontSize: 15,color: Colors.grey),),
                const SizedBox(height: 25),
                MyTextField(
                  controller: usernameController,
                  hintText: 'UserName',
                  obscureText: false,
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
                ElevatedButton(onPressed: (){
                  Get.to(UserInformation(username: usernameController.text.toString(), password: passwordController.text.toString(),));
                }

                    , child: Text("sign in")),
                const SizedBox( height: 50),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:10.0,vertical: 0),
                  child: const Row(
                    children: [
                      Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      ),
                      Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      ),
                Text("Or continue with Google",style: TextStyle(fontSize: 20,color: Colors.red),),
                Image(image: AssetImage('assets/google.png'),height: 50.0,),
                Expanded(child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
                ),
                ],
              ),
              ),

                ],
            ),
          ),
            ),),],
      )

    );
  }
}