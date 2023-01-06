// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
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
  }

  /// AWS Identity ID
  String? get identityId;

  /// AWS Identity Pool credentials
  AWSCredentials? get awsCredentials;

  /// Cognito User Pool tokens
  CognitoUserPoolTokens? get userPoolTokens;

  /// Confirmed device secrets
  @BuiltValueField(autoCreateNestedBuilder: false)
  CognitoDeviceSecrets? get deviceSecrets;

  /// Cognito user ID
  String get userId;

  /// Cognito username
  String get username;

  /// Cognito sign-in details
  CognitoSignInDetails get signInDetails;

  /// Cognito user attributes
  BuiltMap<String, String> get attributes;
}
