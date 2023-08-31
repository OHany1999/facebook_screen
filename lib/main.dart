// ignore_for_file: prefer_const_constructors

import 'package:assignment2_design/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
