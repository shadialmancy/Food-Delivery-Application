import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeInfo {
  static const systemNavigationBarColor = Colors.black;
  static const statusBarColor = Colors.black;

  static getTheme() {
    return ThemeData(
      brightness: Brightness.light,
      // primarySwatch: generateMaterialColor(Palette.primary),
      // primaryColor: Colors.orange[400],
      // accentColor: Colors.blue,
      // backgroundColor: const Color(0xff110e15),
      // scaffoldBackgroundColor: const Color(0xff110e15),
    );
  }

  static getSystemNavigationBarColor() {
    return systemNavigationBarColor;
  }

  static getStatusBarColor() {
    return statusBarColor;
  }

  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) => max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) =>
      Color.fromRGBO(tintValue(color.red, factor), tintValue(color.green, factor), tintValue(color.blue, factor), 1);

  static int shadeValue(int value, double factor) => max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) =>
      Color.fromRGBO(shadeValue(color.red, factor), shadeValue(color.green, factor), shadeValue(color.blue, factor), 1);

  static TextStyle textoGrande() {
    return const TextStyle(fontSize: 25);
  }

  static double radioBordeCircular() {
    return 10;
  }
}

class Palette {
  static const Color primary = Color(0xFFb97625);
}
