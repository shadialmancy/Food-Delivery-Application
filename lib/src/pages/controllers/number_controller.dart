import 'package:flutter/material.dart';

 class NumberController {

   BuildContext? context;

   Future? init(BuildContext context){

    this.context = context;

   }

  
   void goToVerificaTuNumero(){
     
     Navigator.pushNamed(context!, '/verificaNumber');
   }
 }