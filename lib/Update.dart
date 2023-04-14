// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'ProfilePage.dart';
import 'main.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = info.getString('user_email')!;
    _passwordController.text = info.getString('user_password')!;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'New Email',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'New Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  info.setString('user_email', email);
                  info.setString('user_password', password);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Email and password updated!'),
                    ),
                  );
                },
                child: Text('Save Changes'),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    "HomePage",
                    (route) => false,
                  );
                },
                child: Container(
                  height: 50,
                  width: 100,
                  child: Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
