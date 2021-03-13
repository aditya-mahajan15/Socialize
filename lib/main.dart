import 'package:flutter/material.dart';
import 'package:socialize/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     home: WelcomeScreen(),
  ));
}