import 'package:flutter/material.dart';

 class RegisterPasswordController {

   BuildContext? context;

   Future? init(BuildContext context){

    this.context = context;

   }

  
   void goToRegisterNameYLastName(){
     
     Navigator.pushNamed(context!, '/registerNameYLastname');
   }
 }