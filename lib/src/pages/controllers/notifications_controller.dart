import 'package:flutter/material.dart';


class NotificationsController {

  BuildContext? context;

  Future? init(BuildContext context){

    this.context = context;

  }


  void goback(){
    Navigator.pop(context!);
  }  

}