import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proevent/component/buttom_welcome.dart';
import 'package:proevent/pages/signin.dart';
import 'package:proevent/pages/signup.dart';

import '../component/custom_scafflod.dart';

class Welcome extends StatelessWidget{
   Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return  CustomScafflod(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
            padding: const  EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                     text:  const TextSpan(
                       children: [
                         TextSpan(
                           text: "Welcome Back !",style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.w600)
                         )
                       ]
                     ),
                  ),

                ),
          )),
          const Flexible(
            flex: 1,
              child: Align( alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                        child: ButtomWelcome(
                      buttomText: "Sign In ",
                          onTap: SignIn(),
                          color: Colors.transparent,
                          textColor: Colors.white,

                    )),
                    Expanded(child: ButtomWelcome(
                      buttomText: "Sign Up ",
                      onTap: SignUp(),
                      color: Colors.white,
                      textColor: Colors.blue,
                    ))
                  ],
                ),

          ))

        ],
      ),
      
    );

  }

}


