import 'package:flutter/material.dart';


class RegisterNameController {

  BuildContext? context;
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();

  Future? init(BuildContext context){

    this.context = context;

  }


  void goToAcuerdoycondiciones(){
    Navigator.pushNamed(context!, '/register_1');
  }  

}