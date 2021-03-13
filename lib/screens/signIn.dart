import 'package:flutter/material.dart';
import 'package:socialize/services/auth.dart';

class SignInScreen extends StatefulWidget {

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Socialize'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {AuthMethods().signInWithGoogle(context);},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(24),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Text("Sign In with Google",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
