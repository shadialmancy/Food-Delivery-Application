import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/detalle_page.dart';
import 'package:ramayo_client_app/src/pages/home_page.dart';
import 'package:ramayo_client_app/src/pages/login_page.dart';

class RoutesApp {
  getRoutes() {
    return {
      '/': (BuildContext context) => HomePage(),
      'login': (BuildContext context) => LoginPage(),
      '/detalle': (BuildContext context) => DetallePage(),
    };
  }
}
