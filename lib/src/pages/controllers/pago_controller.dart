import 'package:flutter/material.dart';

class PagoController{


 BuildContext? context;

 Future? init(BuildContext context){
   this.context = context;
 }

 void goBack(){
   Navigator.pop(context!);
 }


}