import 'package:flutter/material.dart';

class Page2Controller {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  void goBack() {
    Navigator.pop(context!);
  }
}
