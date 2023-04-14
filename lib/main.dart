// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:schoolproject/Createpass.dart';
import 'package:schoolproject/Update.dart';
import 'package:schoolproject/hompage.dart';
import 'package:schoolproject/login.dart';
import 'package:schoolproject/sginup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ProfilePage.dart';
import 'Adhkar.dart';

late SharedPreferences info;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  info = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "Login": (context) => Login(),
        "SignUp": (context) => SignUp(),
        "Createpass": (context) => CreatePass(),
        "HomePage": (context) => HomePage(),
        "ProfilePage": (context) => ProfilePage(),
        "Adhkar": (context) => Adhkar(),
        "Update": (context) => Update()
      },
    );
  }
}
