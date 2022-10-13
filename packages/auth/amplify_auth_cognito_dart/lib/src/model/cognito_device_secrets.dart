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
