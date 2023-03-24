import 'package:flutter/material.dart';

class UserState extends ChangeNotifier {
  String username = "";
  String email = "";

  void saveUser(String newEmail, String name) {
    email = newEmail;
    username = name;
    notifyListeners();
  }
}
