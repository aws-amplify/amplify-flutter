// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asf_context_data.g.dart';

/// {@template amplify_auth_cognito_dart.asf.asf_context_data}
/// Context parameters required for advanced security features (ASF).
/// {@endtemplate}
abstract class ASFContextData
    with AWSSerializable<Map<String, String>>
    implements Built<ASFContextData, ASFContextDataBuilder> {
  /// {@macro amplify_auth_cognito_dart.asf.asf_context_data}
  factory ASFContextData({
    required String? deviceName,
    required String? thirdPartyDeviceId,
    required String? deviceFingerprint,
    required String? clientTimezone,
    required String? applicationName,
    required String? applicationVersion,
    required String? deviceLanguage,
    required String? deviceOsReleaseVersion,
    required int? screenHeightPixels,
    required int? screenWidthPixels,
  }) = _$ASFContextData._;

  /// {@macro amplify_auth_cognito_dart.asf.asf_context_data}
  factory ASFContextData.build([void Function(ASFContextDataBuilder) updates]) =
      _$ASFContextData;

  const ASFContextData._();

  /// {@template amplify_auth_cognito_dart.asf.context_data.device_name}
  /// The `DeviceName` parameter.
  /// {@endtemplate}
  String? get deviceName;

  /// {@template amplify_auth_cognito_dart.asf.context_data.third_party_device_id}
  /// The `ThirdPartyDeviceId` parameter.
  /// {@endtemplate}
  String? get thirdPartyDeviceId;

  /// {@template amplify_auth_cognito_dart.asf.context_data.device_fingerprint}
  /// The `DeviceFingerprint` parameter.
  /// {@endtemplate}
  String? get deviceFingerprint;

  /// {@template amplify_auth_cognito_dart.asf.context_data.client_timezone}
  /// The `ClientTimezone` parameter.
  /// {@endtemplate}
  String? get clientTimezone;

  /// {@template amplify_auth_cognito_dart.asf.context_data.application_name}
  /// The `ApplicationName` parameter.
  /// {@endtemplate}
  String? get applicationName;

  /// {@template amplify_auth_cognito_dart.asf.context_data.application_version}
  /// The `ApplicationVersion` parameter.
  /// {@endtemplate}
  String? get applicationVersion;

  /// {@template amplify_auth_cognito_dart.asf.context_data.device_language}
  /// The `DeviceLanguage` parameter.
  /// {@endtemplate}
  String? get deviceLanguage;

  /// {@template amplify_auth_cognito_dart.asf.context_data.device_os_release_version}
  /// The `DeviceOsReleaseVersion` parameter.
  /// {@endtemplate}
  String? get deviceOsReleaseVersion;

  /// {@template amplify_auth_cognito_dart.asf.context_data.screen_height_pixels}
  /// The `ScreenHeightPixels` parameter.
  /// {@endtemplate}
  int? get screenHeightPixels;

  /// {@template amplify_auth_cognito_dart.asf.context_data.screen_width_pixels}
  /// The `ScreenWidthPixels` parameter.
  /// {@endtemplate}
  int? get screenWidthPixels;

  @override
  Map<String, String> toJson() => {
        if (deviceName != null) 'DeviceName': deviceName!,
        if (thirdPartyDeviceId != null)
          'ThirdPartyDeviceId': thirdPartyDeviceId!,
        if (deviceFingerprint != null) 'DeviceFingerprint': deviceFingerprint!,
        if (clientTimezone != null) 'ClientTimezone': clientTimezone!,
        if (applicationName != null) 'ApplicationName': applicationName!,
        if (applicationVersion != null)
          'ApplicationVersion': applicationVersion!,
        if (deviceLanguage != null) 'DeviceLanguage': deviceLanguage!,
        if (deviceOsReleaseVersion != null)
          'DeviceOsReleaseVersion': deviceOsReleaseVersion!,
        if (screenHeightPixels != null)
          'ScreenHeightPixels': screenHeightPixels!.toString(),
        if (screenWidthPixels != null)
          'ScreenWidthPixels': screenWidthPixels!.toString(),
      };

  /// The [ASFContextData] serializer.
  static Serializer<ASFContextData> get serializer =>
      _$aSFContextDataSerializer;
}
