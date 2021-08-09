import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/config/config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo ${Config.data['version']}'),
      ),
    );
  }
}
