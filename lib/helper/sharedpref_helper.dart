import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
  static String userIdKey = "USERKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userDisplayNameKey = "USERDISPLAYNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userProfilePicKey = "USERPROFILEPICKEY";

  //save data
  Future<bool> saveUserName(String getUserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getUserName);   //setString() returns either true or false
  }

  Future<bool> saveUserEmail(String getUserEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getUserEmail);
  }

  Future<bool> saveUserDisplayName(String getUserDisplayName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userDisplayNameKey, getUserDisplayName);
  }

  Future<bool> saveUserId(String getUserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdKey, getUserId);
  }

  Future<bool> saveUserProfilePic(String getUserProfilePic) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userProfilePicKey, getUserProfilePic);
  }

  //get data

  Future<String> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(userNameKey);   //will return the username(string)
  }

  Future<String> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(userEmailKey);
  }

  Future<String> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(userIdKey);
  }

  Future<String> getUserProfilePic() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(userProfilePicKey);
  }

  Future<String> getUserDisplayName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(userDisplayNameKey);
  }

}