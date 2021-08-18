import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/config/config.dart';
import 'package:ramayo_client_app/src/config/routes.dart';
import 'package:ramayo_client_app/src/config/theme.dart';
import 'package:ramayo_client_app/src/services/local_notification.dart';
import 'package:ramayo_client_app/src/services/push_notification.dart';
import 'package:ramayo_client_app/src/services/version_app.dart';

LocalNotification ln = LocalNotification();
PushNotification pn = PushNotification();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await VersionApp.getVersion();

  ln.initializeSetting();
  pn.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    pn.initListeners(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Config.data['title'].toString(),
      theme: ThemeInfo.getTheme(),
      routes: RoutesApp().getRoutes(),
      initialRoute: '/pagoPage',
    );
  }
}
