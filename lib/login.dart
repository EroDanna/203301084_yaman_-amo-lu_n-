// ignore_for_file: unused_local_variable, prefer_const_constructors

/*import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Createpass");
                    },
                    child: Text(
                      "Forget password?",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 70),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("SignUp");
                    },
                    child: Text(
                      "Create account",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login action here
                String email = _emailController.text;
                String password = _passwordController.text;
                // Do something with the email and password
                Navigator.of(context).pushNamed("HomePage");
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:schoolproject/main.dart';

import 'hompage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Createpass");
                    },
                    child: Text(
                      "Forget password?",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 70),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("SignUp");
                    },
                    child: Text(
                      "Create account",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;
                info.setString('user_email', email);
                info.setString('user_password', password);
                Navigator.of(context).pushNamedAndRemoveUntil(
                  "HomePage",
                  (route) => false,
                );
              },
              child: Text('Login', style: TextStyle(fontSize: 19)),
            ),
          ],
        ),
      ),
    );
  }
}
