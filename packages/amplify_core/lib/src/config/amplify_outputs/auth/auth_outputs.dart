// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/mfa.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/oauth_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/password_policy.dart';
import 'package:meta/meta.dart';

part 'auth_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.auth_outputs}
/// The Amplify Gen 2 outputs for Auth category.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class AuthOutputs
    with AWSEquatable<AuthOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.auth_outputs}
  const AuthOutputs({
    required this.awsRegion,
    this.userPoolId,
    this.userPoolClientId,
    this.appClientSecret,
    this.identityPoolId,
    this.passwordPolicy,
    this.oauth,
    this.standardRequiredAttributes,
    this.usernameAttributes,
    this.userVerificationTypes,
    this.unauthenticatedIdentitiesEnabled = true,
    this.mfaConfiguration,
    this.mfaMethods,
  });

  factory AuthOutputs.fromJson(Map<String, Object?> json) =>
      _$AuthOutputsFromJson(json);

  /// The AWS region of Amazon Cognito resources.
  final String awsRegion;

  /// The Cognito User Pool ID.
  final String? userPoolId;

  /// The Cognito User Pool Client ID.
  final String? userPoolClientId;

  /// A fixed string that must be used in all API requests to the app client
  /// if the the app client has one configured.
  ///
  /// Note: This attribute is not part of the Amplify Outputs schema.
  /// This exists for backwards compatibility with the Gen 1 config.
  @internal
  final String? appClientSecret;

  /// The Cognito Identity Pool ID.
  final String? identityPoolId;

  /// {@macro amplifyCore.amplify_outputs.password_policy}
  final PasswordPolicy? passwordPolicy;

  /// {@macro amplify_core.amplify_outputs.oauth_outputs}
  final OAuthOutputs? oauth;

  /// The Cognito User Pool standard attributes required for sign up.
  final List<CognitoUserAttributeKey>? standardRequiredAttributes;

  /// The Cognito User Pool username attributes.
  final List<CognitoUserAttributeKey>? usernameAttributes;

  /// The Cognito User Pool verification type.
  final List<CognitoUserAttributeKey>? userVerificationTypes;

  /// Enables unauthenticated identities.
  final bool unauthenticatedIdentitiesEnabled;

  /// {@macro amplify_core.amplify_outputs.maf_enforcement}
  final MfaEnforcement? mfaConfiguration;

  /// {@macro amplify_core.amplify_outputs.maf_method}
  final List<MfaMethod>? mfaMethods;

  @override
  List<Object?> get props => [
        awsRegion,
        userPoolId,
        userPoolClientId,
        identityPoolId,
        oauth,
        standardRequiredAttributes,
        usernameAttributes,
        userVerificationTypes,
        unauthenticatedIdentitiesEnabled,
        mfaConfiguration,
        mfaMethods,
      ];

  @override
  String get runtimeTypeName => 'AuthOutputs';

  @override
  Object? toJson() {
    return _$AuthOutputsToJson(this);
  }
}
