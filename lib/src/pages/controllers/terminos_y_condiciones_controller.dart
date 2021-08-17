import 'package:flutter/material.dart';

class TerminosYCondicionesController{

  BuildContext? context;

  Future? init(BuildContext context){
    this.context = context;
  }


  goToAgregarTarjeta(){
    Navigator.pushNamed(context!, '/agregarTargeta');
  }



}