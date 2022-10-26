// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_analytics_pinpoint_dart.device_context_info_provider}
/// Provide information required for Pinpoint EndpointDemographic object
///
/// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html)online spec.
/// {@endtemplate}
abstract class DeviceContextInfoProvider {
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info_provider}
  Future<DeviceContextInfo> getDeviceInfoDetails();
}

/// {@template amplify_analytics_pinpoint_dart.device_context_info}
/// Data representation of all device information sent to Pinpoint EndpointDemographic
///
/// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html)online spec.
/// {@endtemplate}
class DeviceContextInfo {
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info}
  factory DeviceContextInfo({
    String? countryCode,
    String? locale,
    String? timezone,
    String? appName,
    String? appPackageName,
    String? appVersion,
    String? make,
    String? model,
    String? modelVersion,
    String? platformVersion,
    DevicePlatform? platform,
  }) {
    return DeviceContextInfo._(
      countryCode: _sanitize(countryCode),
      locale: _sanitize(locale),
      timezone: _sanitize(timezone),
      appName: _sanitize(appName),
      appPackageName: _sanitize(appPackageName),
      appVersion: _sanitize(appVersion),
      make: _sanitize(make),
      model: _sanitize(model),
      modelVersion: _sanitize(modelVersion),
      platformVersion: _sanitize(platformVersion),
      platform: platform,
    );
  }

  const DeviceContextInfo._({
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

  static final AmplifyLogger _logger =
      AmplifyLogger.category(Category.analytics)
          .createChild('DeviceContextInfoProvider');

  static const int _maxFieldLength = 50;

  /// ISO 3166-1, Alpha-2, Alpha-3 country code format
  ///
  /// Ex: US or USA
  ///
  /// {@template amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  /// Sent as a field to Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html).
  /// {@endtemplate}
  final String? countryCode;

  /// IETF BCP 47 locale format
  ///
  /// Ex: en_US es_419 haw_US
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  final String? locale;

  /// tz database timezone name
  ///
  /// Due to complexities with tz database, this field is not auto-set!
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  // TODO(fjnoyp): this is currently ignored
  final String? timezone;

  /// Maps to 'AppTitle' in PinpointEvent.
  ///
  /// {@template amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_event}
  /// Sent as a field to [Pinpoint Event](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-events.html).
  /// {@endtemplate}
  final String? appName;

  /// The package name of the app
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_event}
  final String? appPackageName;

  /// Version of the app
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  final String? appVersion;

  /// Manufacturer such as Apple or Samsung
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  final String? make;

  /// Model name or number of device
  ///
  /// Ex: iPhone SM-G900F
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  final String? model;

  /// Model version
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  final String? modelVersion;

  /// Version of the platform
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  final String? platformVersion;

  /// Platform of the device
  ///
  /// {@macro amplify_analytics_pinpoint_dart.device_context_info.sent_to_pinpoint_endpoint}
  final DevicePlatform? platform;

  static String? _sanitize(String? field) {
    if (field == null || field.length <= _maxFieldLength) return field;

    final newField = field.substring(0, _maxFieldLength);
    _logger.warn(
      'Field truncated to: "$newField" '
      'to ensure max length of $_maxFieldLength',
    );
    return newField;
  }
}

// ignore: public_member_api_docs
enum DevicePlatform {
  ///
  iOS,

  ///
  android,

  ///
  web,

  ///
  macOS,

  ///
  windows,

  ///
  linux,

  ///
  unknown,
}
