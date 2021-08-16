import 'package:flutter/material.dart';


class RegisterEmailController {

  BuildContext? context;

  Future? init(BuildContext context){

    this.context = context;

  }


  void goToRegisterPassword(){
    Navigator.pushNamed(context!, '/registerPassword');
  }  

}