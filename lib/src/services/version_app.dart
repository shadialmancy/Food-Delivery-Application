import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:ramayo_client_app/src/config/config.dart';


class VersionApp {
  static Future<void> getVersion() async {
    WidgetsFlutterBinding.ensureInitialized();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String versionName = packageInfo.version;
    String versionCode = packageInfo.buildNumber;
    Config.data['version'] = '$versionCode[$versionName]';
  }
}
