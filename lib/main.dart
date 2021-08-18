import 'package:flutter/material.dart';

void main() {
  runApp(AuthApp());
}

class AuthApp extends StatefulWidget {
  const AuthApp({ Key? key }) : super(key: key);

  @override
  _AuthAppState createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {

  final email = TextEditingController();
  final pass = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auth User'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(controller: email),
              TextField(controller: pass),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
                  ElevatedButton(onPressed: () {}, child: Text('Sign In')),
                  ElevatedButton(onPressed: () {}, child: Text('Log Out')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


