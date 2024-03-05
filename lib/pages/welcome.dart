import 'package:flutter/material.dart';
import 'package:proevent/component/buttom_welcome.dart';
import 'package:proevent/pages/signup.dart';
import '../component/custom_scafflod.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScafflod(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome Back !",
                        style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Flexible(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtomWelcome(
                  buttomText: "Sign In",
                  onTap: SignIn(),
                  color: Colors.white,
                  textColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
