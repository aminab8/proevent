import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/employee.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int _currentIndex = 0;
  Employee? employee; // Declare a variable to store the passed employee data

  @override
  void initState() {
    super.initState();
    // Extract the passed employee data when the page is created
    employee = Get.arguments as Employee?;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Welcome to ProEvent')



      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    // Based on the current index, return the corresponding page
    switch (_currentIndex) {
      case 0:
        return FirstPage();
      case 1:
      // Pass the employee data to the ProfilePage
        return ProfilePage(employee: employee);
      default:
        return Container();
    }
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}


class ProfilePage extends StatelessWidget {
  final Employee? employee;

  ProfilePage({Key? key, this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Username: ${employee?.username}'),
          SizedBox(height: 10),
          Text('Email: ${employee?.email}'),
          // Add other fields as needed
        ],
      ),
    );
  }
}