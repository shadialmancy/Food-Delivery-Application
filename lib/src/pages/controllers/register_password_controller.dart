import 'package:flutter/material.dart';

class RegisterPasswordController {
  BuildContext? context;
  TextEditingController passwordController = new TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void goToRegisterNameAndLastName() {
    Navigator.pushNamed(context!, '/goToRegisterNameAndLastName');
  }
}
