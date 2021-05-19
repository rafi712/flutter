import 'package:flutter/material.dart';
import 'package:flutter_coba/mainpage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
            child: Text('Login')),
      ),
    );
  }
}
