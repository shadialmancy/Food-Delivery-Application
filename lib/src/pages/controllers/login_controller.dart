import 'package:flutter/material.dart';

 class LoginController {

   BuildContext? context;

   Future? init(BuildContext context){

    this.context = context;

   }

  
   void goToHomePage(){
     //TODO validar login
     Navigator.pushNamed(context!, '/');
   }

   void goToIngresaNumero(){
     Navigator.pushNamed(context!, '/pageRegister');
   }

   void goToForgotPassword(){
     Navigator.pushNamed(context!, '/forgotPassword');
   }
 }