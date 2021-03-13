import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:socialize/helper/sharedpref_helper.dart';
import 'package:socialize/screens/home.dart';
import 'package:socialize/services/database.dart';

class AuthMethods{
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCurrentUser(){
    return auth.currentUser;
  }

  Future<User> signInWithGoogle(BuildContext context) async {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = new GoogleSignIn();

    final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    // print(credential);

    UserCredential result =  await _firebaseAuth.signInWithCredential(credential);

    User userDetails = result.user;



    if(result != null){
      SharedPreferenceHelper().saveUserEmail(userDetails.email);
      SharedPreferenceHelper().saveUserId(userDetails.uid);
      SharedPreferenceHelper().saveUserDisplayName(userDetails.displayName);
      SharedPreferenceHelper().saveUserProfilePic(userDetails.photoURL);

      Map<String, dynamic> userInfoMap = {
        "email": userDetails.email,
        "username": userDetails.email.replaceAll("@gmail.com", ""),
        "name": userDetails.displayName,
        "imgUrl": userDetails.photoURL,
      };

      DatabaseMethods().addUserInfoToDB(userDetails.uid, userInfoMap).then((value) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      });
    }

  }
}