abstract class DeviceContextInfoProvider {
  Future<DeviceContextInfo> getDeviceInfoDetails();
}

class DeviceContextInfo {
  const DeviceContextInfo({
    this.countryCode,
    this.locale,
    this.timezone,
    this.appName,
    this.appPackageName,
    this.appVersion,
    this.make,
    this.model,
    this.modelVersion,
    this.platform,
    this.platformVersion,
  });

  final String? countryCode;
  final String? locale;
  final String? timezone;
  final String? appName;
  final String? appPackageName;
  final String? appVersion;
  final String? make;
  final String? model;
  final String? modelVersion;
  final String? platformVersion;
  final DevicePlatform? platform;
}

/// Device Platforms
enum DevicePlatform { iOS, android, web, macOS, windows, linux, unknown }
