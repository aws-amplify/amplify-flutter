// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'cognito_device_secrets.g.dart';

/// {@template amplify_auth_cognito.cognito_device_secrets}
/// Cognito device private information.
/// {@endtemplate}
@internal
abstract class CognitoDeviceSecrets
    implements Built<CognitoDeviceSecrets, CognitoDeviceSecretsBuilder> {
  /// {@macro amplify_auth_cognito.cognito_device_secrets}
  factory CognitoDeviceSecrets([
    void Function(CognitoDeviceSecretsBuilder) updates,
  ]) = _$CognitoDeviceSecrets;
  CognitoDeviceSecrets._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _init(CognitoDeviceSecretsBuilder b) {
    b.deviceStatus ??= DeviceRememberedStatusType.notRemembered;
  }

  /// The device group key.
  String get deviceGroupKey;

  /// The device key/ID.
  String get deviceKey;

  /// The device password.
  String get devicePassword;

  /// Whether the device requires confirmation before the device is remembered.
  ///
  /// When the value is [DeviceRememberedStatusType.notRemembered], the device
  /// is being tracked but it is not remembered yet. The user must call
  /// `Amplify.Auth.rememberDevice` to opt-in to remembering.
  ///
  /// https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
  DeviceRememberedStatusType get deviceStatus;

  /// The [CognitoDeviceSecrets] serializer.
  static Serializer<CognitoDeviceSecrets> get serializer =>
      _$cognitoDeviceSecretsSerializer;
}
