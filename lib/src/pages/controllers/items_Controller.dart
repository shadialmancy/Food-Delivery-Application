import 'package:flutter/material.dart';


class ItemsController {

  BuildContext? context;

  Future? init(BuildContext context){

    this.context = context;

  }

  void goBack(){
    Navigator.pop(context!);
  }

}