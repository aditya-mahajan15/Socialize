import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:socialize/shared/Button.dart';
import 'package:socialize/screens/signIn.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Image.asset('image_assets/logo.png'),
                  height: 140,
                ),
                // Text('Socialize',style: TextStyle(fontSize: 35),),
            SizedBox(
              width: 140.0,
              child: TypewriterAnimatedTextKit(
                onTap: () {},
                text: [
                  "Socialize",
                ],
                speed: Duration(milliseconds: 500),
                textStyle: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Agne",
                    color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                Button(colour: Colors.lightBlueAccent,title: 'SignUp/LogIn',onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));},),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}