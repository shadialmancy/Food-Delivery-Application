import 'package:flutter/material.dart';

 class NumberController {

   BuildContext? context;
   TextEditingController phoneController = new TextEditingController();
   

   Future? init(BuildContext context){

    this.context = context;

   }

  
   void goToVerificaTuNumero(){
     
     String phone = phoneController.text.trim();
    
     Navigator.pushNamed(context!, '/verificaNumber');
   }
 }