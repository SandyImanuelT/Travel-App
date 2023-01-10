import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';

  static User myUser = User(
      image:
          "https://firebasestorage.googleapis.com/v0/b/auth-26cb4.appspot.com/o/images%2Fname?alt=media&token=3f20126b-3922-48da-8686-dc4bb1f8fc70",
      name: 'Sandy Imanuel',
      email: 'sandyimanuel17@gmail.com',
      phone: '0899-8179-894',
      aboutMeDescription: '');

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
