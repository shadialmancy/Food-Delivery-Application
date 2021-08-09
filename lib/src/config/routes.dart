

import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/home_page.dart';


class RoutesApp {
  getRoutes() {
    return {
      '/': (BuildContext context) => HomePage(),
    };
  }
}
