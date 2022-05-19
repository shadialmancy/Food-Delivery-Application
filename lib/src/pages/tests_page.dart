import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ramayo_client_app/src/services/local_notification.dart';

class TestPage extends StatefulWidget {
  @override
  _TestsPageState createState() => _TestsPageState();
}

class _TestsPageState extends State<TestPage> {
  LocalNotification ln = LocalNotification();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => warning(),
          child: const Text('Try local notification'),
        ),
      ),
    );
  }

  warning() {
    // LocalNotification ln = LocalNotification();
    ln.displayNotification(
        'warning',
        'warning ${DateFormat('dd-MM-yyyy – kk:mm:ss').format(DateTime.now())}',
        (DateTime.now().add(const Duration(seconds: 10))));
  }
}
