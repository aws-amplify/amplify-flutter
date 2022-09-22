abstract class DeviceContextInfoProvider {
  String? get countryCode => '';

  String? get locale => '';

  String? get timezone => '';

  // App Info
  String? get appName => '';
  String? get appPackageName => '';
  String? get appVersion => '';

  // Device Info
  String? get make => '';

  String? get model => '';

  String? get modelVersion => '';

  String? get platform => '';

  String? get platformVersion => '';

  Future<void> getDeviceInfoDetails();
}
