import 'package:flutter/material.dart';

class TermsAndConditionsController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  goToAddCard() {
    Navigator.pushReplacementNamed(context!, '/addCard');
  }
}
