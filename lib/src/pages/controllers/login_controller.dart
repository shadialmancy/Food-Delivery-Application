import 'package:flutter/material.dart';

 class LoginController {

   BuildContext? context;

   Future? init(BuildContext context){

    this.context = context;

   }

  
   void goToHomePage(){
     
     Navigator.pushNamed(context!, '/');
   }

   void goToIngresaNumero(){
     Navigator.pushNamed(context!, '/numberPage');
   }
 }