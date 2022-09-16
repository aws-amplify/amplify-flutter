import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  String? appName;
  String? packageName;
  String? version;

  AppInfo(this.appName, this.packageName, this.version);
}

class AppInfoProvider {
  static Future<AppInfo> getAppData() async {
    final info = await PackageInfo.fromPlatform();
    return AppInfo(info.appName, info.packageName, info.version);
  }
}
