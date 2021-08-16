import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/agregar_tarjeta.dart';
import 'package:ramayo_client_app/src/pages/detalle_page.dart';
import 'package:ramayo_client_app/src/pages/home_page.dart';
import 'package:ramayo_client_app/src/pages/login_page.dart';
import 'package:ramayo_client_app/src/pages/pruebas_page.dart';
import 'package:ramayo_client_app/src/pages/registration/number_page.dart';
import 'package:ramayo_client_app/src/pages/registration/register_1.dart';
import 'package:ramayo_client_app/src/pages/registration/register_email.dart';
import 'package:ramayo_client_app/src/pages/verifica_number_page.dart';

class RoutesApp {
  getRoutes() {
    return {
      '/': (BuildContext context) => HomePage(),
      '/agregarTargeta': (BuildContext context) => AgregarTarjetaPage(),
      '/login': (BuildContext context) => LoginPage(),
      '/pruebas': (BuildContext context) => PruebasPage(),
      '/detalle': (BuildContext context) => DetallePage(),
      '/register_1': (BuildContext context) => const RegisterPage_1(),
      '/numberPage': (BuildContext context) => NumberPage(),
      '/verificaNumber': (BuildContext context) => VerificaNumero(),
      '/registerEmail': (BuildContext context) => RegisterEmail(),
    };
  }
}
