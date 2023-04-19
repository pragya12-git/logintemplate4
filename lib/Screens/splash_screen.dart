import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen/login_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
              child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 60,
            ),
          )),
          SizedBox(
            height: 15,
          ),
          Text(
            "Welcome to  app",
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
