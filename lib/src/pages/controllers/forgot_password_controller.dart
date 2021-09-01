import 'package:flutter/material.dart';

class ForgotPasswordController{

 BuildContext? context;
 TextEditingController passwordActual = new TextEditingController();
 TextEditingController nuevaPassword = new TextEditingController();
 TextEditingController confirmarPasswordNueva = new TextEditingController();

 Future? init(BuildContext context){
   this.context = context;
 }

 goBack(){
   Navigator.pop(context!);
 }


}