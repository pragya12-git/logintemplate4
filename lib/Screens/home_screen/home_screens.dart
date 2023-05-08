import 'package:flutter/material.dart';
import 'package:logintemplate1/models/models.dart';

class Homescreen extends StatefulWidget {
  final Model userData;

  const Homescreen({super.key, required this.userData});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.userData.message!.fullName!),
      ),
    );
  }
}
