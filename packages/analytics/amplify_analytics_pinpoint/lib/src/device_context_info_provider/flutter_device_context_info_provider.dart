import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info_provider.dart';
import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/device_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:flutter/material.dart';

class FlutterDeviceContextInfoProvider implements DeviceContextInfoProvider {
  const FlutterDeviceContextInfoProvider();

  @override
  Future<DeviceContextInfo> getDeviceInfoDetails() async {
    var appInfo = await AppInfoProvider.getAppData();
    var deviceInfo = await DeviceInfoProvider.getDeviceInfo();
    return DeviceContextInfo(
      countryCode: WidgetsBinding.instance.window.locale.countryCode,
      locale: WidgetsBinding.instance.window.locale.toString(),
      // https://github.com/dart-lang/sdk/issues/21758
      // Flutter timezone.name provides time dependent names PDT/PST
      // which are not accepted by Pinpoint
      // Other packages require location objects (tz database) or don't work on all platforms
      // NOTE: all times sent to Pinpoint must be in UTC ... (DateTime.now().toUtc()...)
      timezone: 'UTC',
      appName: appInfo.appName,
      appPackageName: appInfo.packageName,
      appVersion: appInfo.version,
      make: deviceInfo.make,
      model: deviceInfo.model,
      modelVersion: deviceInfo.modelVersion,
      platform: deviceInfo.platform,
      platformVersion: deviceInfo.platformVersion,
    );
  }
}
