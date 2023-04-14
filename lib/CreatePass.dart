// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';

class CreatePass extends StatefulWidget {
  @override
  _CreatePassState createState() => _CreatePassState();
}

class _CreatePassState extends State<CreatePass> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Create password',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Confirm',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;

                Navigator.of(context).pushNamed("Login");
              },
              child: Text('Confirm', style: TextStyle(fontSize: 19)),
            ),
          ],
        ),
      ),
    );
  }
}
