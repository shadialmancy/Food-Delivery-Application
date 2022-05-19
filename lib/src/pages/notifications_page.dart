import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/notifications_controller.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  NotificationsController _controller = new NotificationsController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: _controller.goback,
            icon: const Icon(FontAwesomeIcons.arrowLeft),
            color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              'Notification settings',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              'Push notifications',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 19),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              'Enter the app settings on your phone to enable/disable notifications about your order',
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
