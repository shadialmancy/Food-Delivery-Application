import 'package:flutter/material.dart';

class AgregarTarjetaController{


 BuildContext? context;
 TextEditingController numberCardController = new TextEditingController();
 TextEditingController expDateController = new TextEditingController();
 TextEditingController cvvController = new TextEditingController();
 TextEditingController codigoPostalController = new TextEditingController();

 Future? init(BuildContext context){
   this.context = context;
 }

 goToUbicationPage(){
   Navigator.pushNamed(context!, '/ubication');
 }


}