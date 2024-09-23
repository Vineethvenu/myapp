import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;
  bool passwordVisible = true;

  void toggle() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
