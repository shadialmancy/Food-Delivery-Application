import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ActivarUbicationController{

 BuildContext? context;
 TextEditingController adressController = new TextEditingController();


 Future? init(BuildContext context){
    this.context = context;
 }

 void goToHomePage(){
   Navigator.pushReplacementNamed(context!, '/');
 }

 void activarGPS(context,PermissionStatus status){
  
  switch (status) {

    case PermissionStatus.granted:
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
      break;
    case PermissionStatus.denied:
    case PermissionStatus.restricted:
    case PermissionStatus.permanentlyDenied:
        openAppSettings();
      break;
  }
 }




}