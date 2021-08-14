import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/agregar_tarjeta.dart';
import 'package:ramayo_client_app/src/pages/detalle_page.dart';
import 'package:ramayo_client_app/src/pages/home_page.dart';
import 'package:ramayo_client_app/src/pages/login_page.dart';
import 'package:ramayo_client_app/src/pages/pruebas_page.dart';

class RoutesApp {
  getRoutes() {
    return {
      '/': (BuildContext context) => HomePage(),
      '/agregarTargeta': (BuildContext context) => AgregarTarjetaPage(),
      'login': (BuildContext context) => LoginPage(),
      'pruebas': (BuildContext context) => PruebasPage(),
      '/detalle': (BuildContext context) => DetallePage(),
    };
  }
}
