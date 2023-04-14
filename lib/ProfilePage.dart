// ignore_for_file: prefer_const_constructors
import 'package:schoolproject/main.dart';

import 'package:flutter/material.dart';
import 'Update.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: AssetImage("assets/image/cat.jpg"),
                radius: 80,
              ),
              SizedBox(height: 20),
              Text(
                'Mohammad Ali',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Email: ${info.getString('user_email') == '' ? 'is empty' : info.getString('user_email')} ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Password: ${info.getString('user_password') == '' ? 'is empty' : info.getString('user_password')}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("Update");
        },
        child: Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
