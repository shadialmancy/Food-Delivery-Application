import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/config/config.dart';
import 'package:ramayo_client_app/src/config/routes.dart';
import 'package:ramayo_client_app/src/config/theme.dart';
import 'package:ramayo_client_app/src/services/version_app.dart';

Future<void> main() async {
  await VersionApp.getVersion();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.data['title'].toString(),
      theme: ThemeInfo.getTheme(),
      routes: RoutesApp().getRoutes(),
    );
  }
}
