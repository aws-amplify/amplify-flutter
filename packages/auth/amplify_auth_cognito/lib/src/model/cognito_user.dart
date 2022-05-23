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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/model/cognito_device_secrets.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

part 'cognito_user.g.dart';

/// {@template amplify_auth_cognito.cognito_user}
/// Cognito user information.
///
/// Internal-only.
/// {@endtemplate}
@internal
abstract class CognitoUser implements Built<CognitoUser, CognitoUserBuilder> {
  /// {@macro amplify_auth_cognito.cognito_user}
  factory CognitoUser([void Function(CognitoUserBuilder) updates]) =
      _$CognitoUser;
  CognitoUser._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _finalize(CognitoUserBuilder b) {
    b.username ??= b.userId!;

    // Assert that all device info is included if any is included.
    if (b.device != null) {
      ArgumentError.checkNotNull(b.device, 'device');
      ArgumentError.checkNotNull(
        b.deviceSecrets.deviceGroupKey,
        'deviceGroupKey',
      );
      ArgumentError.checkNotNull(
        b.deviceSecrets.deviceKey,
        'deviceKey',
      );
    }
  }

  /// AWS Identity ID
  String? get identityId;

  /// AWS Identity Pool credentials
  AWSCredentials? get awsCredentials;

  /// Cognito User Pool tokens
  CognitoUserPoolTokens? get userPoolTokens;

  /// Confirmed device
  CognitoDevice? get device;

  /// Confirmed device secrets
  CognitoDeviceSecrets? get deviceSecrets;

  /// Cognito user ID
  String get userId;

  /// Cognito username
  String get username;

  /// Cognito user attributes
  BuiltMap<String, String> get attributes;
}
