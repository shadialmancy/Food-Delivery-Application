import 'package:flutter/material.dart';

class AgregarTarjetaController{


 BuildContext? context;

 Future? init(BuildContext context){
   this.context = context;
 }

 goToUbicationPage(){
   Navigator.pushNamed(context!, '/ubication');
 }


}