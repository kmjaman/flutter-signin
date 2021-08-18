import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    User? user = FirebaseAuth.instance.currentUser;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auth User (Logged ' + (user == null ? 'out' : 'in') + ')'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(controller: email),
              TextField(controller: pass),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () async{
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email.text,
                      password: pass.text,
                    );
                    setState(() {
                      
                    });
                  },
                  child: Text('Sign Up')),
                  ElevatedButton(onPressed: () async{
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: email.text,
                      password: pass.text,
                    );
                    setState(() {
                      
                    });
                  },
                  child: Text('Sign In')),
                  ElevatedButton(onPressed: () async{
                    await FirebaseAuth.instance.signOut();
                    setState(() {
                      
                    });
                  },
                  child: Text('Log Out')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


