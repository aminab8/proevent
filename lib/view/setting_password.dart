import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proevent/view/home.dart';
import 'package:proevent/view/settings.dart';



import '../model/employee.dart';
import '../pages/addevents.dart';
import '../pages/choose_page.dart';


class PasswordController extends GetxController {
  var newPassword = ''.obs;
}
class PasswordSettingsPage extends StatelessWidget {
  final PasswordController passwordController = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  passwordController.newPassword.value = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'New Password',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Access the new password using passwordController.newPassword.value
                  String newPassword = passwordController.newPassword.value;
                  // Implement your logic to save or update the password
                  print('New Password: $newPassword');

                  // Navigate to the Home page and pass the updated password
                  Get.to(() => Home());
                },
                child: Text('Save Password'),
              ),
            ]  ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
            // Naviguer vers ChoosePage
              Get.offAll(ChoosePage());
              break;
            case 1:
            // Naviguer vers AddEvents
              Get.offAll(AddEvents());
              break;
            case 2:
            // Naviguer vers SettingsPage
              Get.offAll(SettingsPage());
              break;
          }
        },
      ),
    );
  }
}