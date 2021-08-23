import 'package:flutter/material.dart';

class ActivarUbicationController{

 BuildContext? context;
 TextEditingController adressController = new TextEditingController();


 Future? init(BuildContext context){
    this.context = context;
 }

 void goToHomePage(){
   Navigator.pushNamed(context!, '/');
 }


}