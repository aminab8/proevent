import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChoosePage extends StatelessWidget {
  ChoosePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey adminButtonKey = GlobalKey();
    GlobalKey employeeButtonKey = GlobalKey();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 100),
        color: Colors.blue,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Welcome to our application",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: ElevatedButton(
                //key: adminButtonKey,
                onPressed: () {
                  Get.offNamed('/admin');
                },
                child: Text(
                  "Admin",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: ElevatedButton(
                //key: employeeButtonKey,
                onPressed: () {
                  Get.offNamed('/employee');
                },
                child: Text(
                  "Employé",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
