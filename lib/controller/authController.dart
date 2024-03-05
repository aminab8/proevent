import 'package:get/get.dart';

class AuthController extends GetxController {
  // Your authentication logic goes here

  Future<void> signOut() async {
    // Perform the sign-out logic here
    // For example, clear user session, update authentication state, etc.
    // You might use Firebase, Dio, or any other method for sign-out.

    // For demonstration purposes, let's assume a simple delayed sign-out
    await Future.delayed(Duration(seconds: 2));

    // After sign-out, navigate to the login or home screen
    Get.offAllNamed('/login'); // replace with your desired route
  }
}