import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ramayo_client_app/src/pages/agregar_tarjeta.dart';
import 'package:ramayo_client_app/src/pages/registration/activar_ubicacion_page.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_0_number_page.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_5_privacy_agree.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_2_register_email.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_4_register_name.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_3_register_password.dart';
import 'package:ramayo_client_app/src/pages/verifica_number_page.dart';

class PageRegistration extends StatefulWidget {

  @override
  _PageRegistrationState createState() => _PageRegistrationState();
}

class _PageRegistrationState extends State<PageRegistration> {

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> listPage = [
   NumberPage(),
   VerificaNumero(),
   const RegisterEmail(),
   const RegisterPassword(),
   const RegisterNameYLastName(),
   const RegisterPage_1(),
   AgregarTarjetaPage(),
   ActivarUbicacion(),
];


  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[

          CarouselSlider(
            items: listPage,
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason){
                setState(() {
                  _current = index;
                });
              }
            ),
          ),

          

          Positioned(
            bottom: 20,
            left: 115,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listPage.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
           ),
          ),

        ],
      ),
    );
  }
}