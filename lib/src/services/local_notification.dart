import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class LocalNotification {
  static final LocalNotification _singleton = LocalNotification._internal();

  factory LocalNotification() {
    return _singleton;
  }

  LocalNotification._internal() {
    tz.initializeTimeZones();
  }

  FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

  void initializeSetting() async {
    var initializeAndroid = const AndroidInitializationSettings('img_temp');
    var initializeSetting = InitializationSettings(android: initializeAndroid);
    await notificationsPlugin.initialize(initializeSetting);
  }

  Future<void> displayNotification(String title, String body, DateTime dateTime) async {
    notificationsPlugin.zonedSchedule(
      0,
      title,
      body,
      // tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
      tz.TZDateTime.from(dateTime, tz.local),
      const NotificationDetails(
          android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        'channel description',
        // sound: RawResourceAndroidNotificationSound('recurso'),
        playSound: true,
        // importance: Importance.max,
        // priority: Priority.high,
      )),
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }
}
