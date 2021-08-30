import 'package:flutter/material.dart';


class HomeController {

  BuildContext? context;

  Future? init(BuildContext context){

    this.context = context;

  }


  void goToDetallesPage(){
    Navigator.pushNamed(context!, '/detalle');
  }  

  void goOut(){
    Navigator.pushNamedAndRemoveUntil(context!, '/login', (route) => false);
  }


}