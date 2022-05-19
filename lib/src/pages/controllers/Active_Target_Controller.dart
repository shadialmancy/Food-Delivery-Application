import 'package:flutter/material.dart';

class AddCardController {
  BuildContext? context;
  TextEditingController numberCardController = new TextEditingController();
  TextEditingController expDateController = new TextEditingController();
  TextEditingController cvvController = new TextEditingController();
  TextEditingController codigoPostalController = new TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;
  }

  goToLocationPage() {
    Navigator.pushReplacementNamed(context!, '/activateLocation');
  }
}
