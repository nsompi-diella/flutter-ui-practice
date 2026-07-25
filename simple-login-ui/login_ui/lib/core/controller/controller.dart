import 'package:flutter/material.dart';

class Controller {
  final usernameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    usernameCtrl.dispose();
  }
}
