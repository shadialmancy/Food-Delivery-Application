import 'package:flutter/material.dart';


class FavoriteRestaurantController {

  BuildContext? context;

  Future? init(BuildContext context){

    this.context = context;

  }


  void goback(){
    Navigator.pop(context!);
  }  

}