import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/agregar_tarjeta.dart';
import 'package:ramayo_client_app/src/pages/detalle_page.dart';
import 'package:ramayo_client_app/src/pages/favorite_restaurant_page.dart';
import 'package:ramayo_client_app/src/pages/forgot_page.dart';
import 'package:ramayo_client_app/src/pages/home_page.dart';
import 'package:ramayo_client_app/src/pages/information_restaurant_page.dart';
import 'package:ramayo_client_app/src/pages/items_page.dart';
import 'package:ramayo_client_app/src/pages/login_page.dart';
import 'package:ramayo_client_app/src/pages/notifications_page.dart';
import 'package:ramayo_client_app/src/pages/order_summary_page.dart';
import 'package:ramayo_client_app/src/pages/pago_page.dart';
import 'package:ramayo_client_app/src/pages/payment_page.dart';
import 'package:ramayo_client_app/src/pages/pruebas_page.dart';
import 'package:ramayo_client_app/src/pages/registration/activar_ubicacion_page.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_0_number_page.dart';
import 'package:ramayo_client_app/src/pages/register_page.dart';
import 'package:ramayo_client_app/src/pages/privacy_agree_page.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_2_register_email.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_4_register_name.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_3_register_password.dart';
import 'package:ramayo_client_app/src/pages/verifica_number_page.dart';

class RoutesApp {
  getRoutes() {
    return {
      '/': (BuildContext context) => HomePage(),
      '/login': (BuildContext context) => LoginPage(),
      '/pruebas': (BuildContext context) => PruebasPage(),
      '/detalle': (BuildContext context) => DetallePage(),
      '/numberPage': (BuildContext context) => NumberPage(),
      '/verificaNumber': (BuildContext context) => VerificaNumero(),
      // '/registerEmail': (BuildContext context) => RegisterEmail(),
      // '/registerPassword': (BuildContext context) => RegisterPassword(),
      // '/registerNameYLastname': (BuildContext context) => RegisterNameYLastName(),
      '/informationRestaurant': (BuildContext context) => InformationRestaurant(),
      '/favoriteRestaurant': (BuildContext context) => FavoriteRestaurantPage(),
      '/pagoPage': (BuildContext context) => PagoPage(),
      '/notificationsPage': (BuildContext context) => NotificationsPage(),
      '/shadi': (BuildContext context) => PaymentPage(),
      '/forgotPassword': (BuildContext context) => ForgotPage(),
      '/itemsPage': (BuildContext context) => ItemsPage(),
      '/pageRegister': (BuildContext context) => PageRegistration(),
      '/privacyAgree': (BuildContext context) => PrivacyAgreePage(),
      '/agregarTarjeta': (BuildContext context) => AgregarTarjetaPage(),
      '/activarUbicacion': (BuildContext context) => ActivarUbicacion(),
    };
  }
}
