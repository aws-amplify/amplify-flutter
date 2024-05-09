// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_user_pool_tokens.g.dart';

/// {@template amplify_auth_dart.cognito_user_pool_tokens}
/// Cognito credentials of the active user.
/// {@endtemplate}
@zAmplifySerializable
@_CognitoSignInMethodSerializer()
@_JsonWebTokenSerializer()
abstract class CognitoUserPoolTokens
    with AWSSerializable<Map<String, Object?>>
    implements Built<CognitoUserPoolTokens, CognitoUserPoolTokensBuilder> {
  /// {@macro amplify_auth_dart.cognito_user_pool_tokens}
  factory CognitoUserPoolTokens({
    CognitoSignInMethod signInMethod = CognitoSignInMethod.default$,
    required JsonWebToken accessToken,
    required String refreshToken,
    required JsonWebToken idToken,
  }) {
    return _$CognitoUserPoolTokens._(
      signInMethod: signInMethod,
      accessToken: accessToken,
      refreshToken: refreshToken,
      idToken: idToken,
    );
  }

  /// {@macro amplify_auth_dart.cognito_user_pool_tokens}
  factory CognitoUserPoolTokens.build([
    void Function(CognitoUserPoolTokensBuilder) updates,
  ]) = _$CognitoUserPoolTokens;

  /// {@macro amplify_auth_dart.cognito_user_pool_tokens}
  factory CognitoUserPoolTokens.fromJson(Map<String, Object?> json) =>
      _$CognitoUserPoolTokensFromJson(json);

  const CognitoUserPoolTokens._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _finalize(CognitoUserPoolTokensBuilder b) {
    b.signInMethod ??= CognitoSignInMethod.default$;
  }

  /// The method by which the user signed in and retrieved these tokens.
  CognitoSignInMethod get signInMethod;

  /// The Cognito access token.
  JsonWebToken get accessToken;

  /// The Cognito refresh token.
  ///
  /// Refresh tokens typically carry no encoded information for the client. We
  /// should not assume a structure, unlike with the access and ID tokens, and
  /// simply store the opaque token.
  String get refreshToken;

  /// The Cognito ID token.
  JsonWebToken get idToken;

  /// The Cognito user's ID.
  String get userId => idToken.userId;

  /// The Cognito user's username.
  String get username => CognitoIdToken(idToken).username;

  /// Validates the tokens against the client state.
  void validate() {
    // This method used to validate the `nonce` claim against the value
    // passed as part of the /authorize call. However, it has since been
    // removed since it is only relevant to the implicit grant flow (which
    // we do not support) and interferes with custom Hosted UI implementations.
    // See: https://github.com/aws-amplify/amplify-flutter/issues/3129
  }

  @override
  Map<String, Object?> toJson() => _$CognitoUserPoolTokensToJson(this);

  @override
  String toString() => "Instance of 'CognitoUserPoolTokens'";
}

class _CognitoSignInMethodSerializer
    implements JsonConverter<CognitoSignInMethod, String> {
  const _CognitoSignInMethodSerializer();

  @override
  CognitoSignInMethod fromJson(String json) =>
      CognitoSignInMethod.valueOf(json);

  @override
  String toJson(CognitoSignInMethod object) => object.toJson();
}

/// {@template amplify_auth_cognito_dart.jwt.json_web_token_serializer}
/// `package:json_serializable` plugin for [JsonWebToken].
/// {@endtemplate}
class _JsonWebTokenSerializer implements JsonConverter<JsonWebToken, String> {
  /// {@macro amplify_auth_cognito_dart.jwt.json_web_token_serializer}
  const _JsonWebTokenSerializer();

  @override
  JsonWebToken fromJson(String json) => JsonWebToken.parse(json);

  @override
  String toJson(JsonWebToken object) => object.toJson();
}
