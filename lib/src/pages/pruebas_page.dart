import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ramayo_client_app/src/services/local_notification.dart';

class PruebasPage extends StatefulWidget {
  @override
  _PruebasPageState createState() => _PruebasPageState();
}

class _PruebasPageState extends State<PruebasPage> {
  LocalNotification ln = LocalNotification();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => aviso(),
          child: const Text('Prueba notificación local'),
        ),
      ),
    );
  }

  aviso() {
    // LocalNotification ln = LocalNotification();
    ln.displayNotification(
        'aviso', 'aviso ${DateFormat('dd-MM-yyyy – kk:mm:ss').format(DateTime.now())}', (DateTime.now().add(const Duration(seconds: 10))));
  }
}
