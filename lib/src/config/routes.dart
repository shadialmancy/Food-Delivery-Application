import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/AddCardPage.dart';
import 'package:ramayo_client_app/src/pages/detall_page.dart';
import 'package:ramayo_client_app/src/pages/favorite_restaurant_page.dart';
import 'package:ramayo_client_app/src/pages/forgot_page.dart';
import 'package:ramayo_client_app/src/pages/home_page.dart';
import 'package:ramayo_client_app/src/pages/information_restaurant_page.dart';
import 'package:ramayo_client_app/src/pages/items_page.dart';
import 'package:ramayo_client_app/src/pages/login_page.dart';
import 'package:ramayo_client_app/src/pages/notifications_page.dart';
import 'package:ramayo_client_app/src/pages/order_summary_page.dart';
import 'package:ramayo_client_app/src/pages/payment_main_page.dart';
import 'package:ramayo_client_app/src/pages/payment_page.dart';
import 'package:ramayo_client_app/src/pages/tests_page.dart';
import 'package:ramayo_client_app/src/pages/registration/activate_location_page.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_0_number_page.dart';
import 'package:ramayo_client_app/src/pages/register_page.dart';
import 'package:ramayo_client_app/src/pages/privacy_agree_page.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_2_register_email.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_4_register_name.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_3_register_password.dart';

import '../pages/verify_number_page.dart';
// import 'package:ramayo_client_app/src/pages/verifica_number_page.dart';

class RoutesApp {
  getRoutes() {
    return {
      '/': (BuildContext context) => HomePage(),
      '/login': (BuildContext context) => LoginPage(),
      '/tests': (BuildContext context) => TestPage(),
      '/detail': (BuildContext context) => DetailPage(),
      '/numberPage': (BuildContext context) => NumberPage(),
      '/verifyNumber': (BuildContext context) => VerifyNumber(),
      // '/registerEmail': (BuildContext context) => RegisterEmail(),
      // '/registerPassword': (BuildContext context) => RegisterPassword(),
      // '/registerNameYLastname': (BuildContext context) => RegisterNameYLastName(),
      '/informationRestaurant': (BuildContext context) =>
          InformationRestaurant(),
      '/favoriteRestaurant': (BuildContext context) => FavoriteRestaurantPage(),
      '/pagePage': (BuildContext context) => PaymentMainPage(),
      '/notificationsPage': (BuildContext context) => NotificationsPage(),
      '/shadi': (BuildContext context) => PaymentPage(),
      '/forgotPassword': (BuildContext context) => ForgotPage(),
      '/itemsPage': (BuildContext context) => ItemsPage(),
      '/pageRegister': (BuildContext context) => PageRegistration(),
      '/privacyAgree': (BuildContext context) => PrivacyAgreePage(),
      '/addCard': (BuildContext context) => AddCardPage(),
      '/activateLocation': (BuildContext context) => ActiveLocationPage(),
    };
  }
}
