import 'package:flutter/material.dart';


class ProfileController {

  BuildContext? context;

  Future? init(BuildContext context){

    this.context = context;

  }


  void goToFavoriteRestaurant(){
    Navigator.pushNamed(context!, '/favoriteRestaurant');
  } 

  void goToPagoPage(){
    Navigator.pushNamed(context!, '/pagoPage');
  }

  void goToNotificationPage(){
    Navigator.pushNamed(context!, '/notificationsPage');
  }

}