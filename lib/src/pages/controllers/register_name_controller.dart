import 'package:flutter/material.dart';


class RegisterNameController {

  BuildContext? context;

  Future? init(BuildContext context){

    this.context = context;

  }


  void goToAcuerdoycondiciones(){
    Navigator.pushNamed(context!, '/register_1');
  }  

}