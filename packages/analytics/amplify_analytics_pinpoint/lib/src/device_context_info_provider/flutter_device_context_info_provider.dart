import 'dart:io' show Platform;

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/app_info_provider.dart';
import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/device_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:flutter/material.dart';

class FlutterDeviceContextInfoProvider implements DeviceContextInfoProvider {
  @override
  String? get countryCode => WidgetsBinding.instance.window.locale.countryCode;

  @override
  String? get locale => WidgetsBinding.instance.window.locale.toString();

  @override
  String? get timezone => DateTime.now().timeZoneName;

  // App Info
  @override
  String? get appName => _appName;

  @override
  String? get appPackageName => _appPackageName;

  @override
  String? get appVersion => _appVersion;

  // Device Info
  @override
  String? get make => _make;

  @override
  String? get model => _model;

  @override
  String? get modelVersion => _modelVersion;

  @override
  String? get platform => _platform;

  @override
  String? get platformVersion => _platformVersion;

  late final String? _appName;
  late final String? _appPackageName;
  late final String? _appVersion;

  late final String? _make;
  late final String? _model;
  late final String? _modelVersion;
  late final String? _platform;
  late final String? _platformVersion;

  FlutterDeviceContextInfoProvider();

  @override
  Future<void> getDeviceInfoDetails() async {
    var appInfo = await AppInfoProvider.getAppData();
    var deviceInfo = await DeviceInfoProvider.getDeviceData();

    _appName = appInfo.appName;
    _appPackageName = appInfo.packageName;
    _appVersion = appInfo.version;

    _make = deviceInfo.make;
    _model = deviceInfo.model;
    _modelVersion = deviceInfo.modelVersion;
    _platform = deviceInfo.platform;
    _platformVersion = deviceInfo.platformVersion;
  }
}
