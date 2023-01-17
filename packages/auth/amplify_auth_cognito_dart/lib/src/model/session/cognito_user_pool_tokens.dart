// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_user_pool_tokens.g.dart';

/// {@macro amplify_auth_dart.cognito_user_pool_tokens}
@Deprecated('Use CognitoUserPoolTokens instead')
typedef AWSCognitoUserPoolTokens = CognitoUserPoolTokens;

/// {@template amplify_auth_dart.cognito_user_pool_tokens}
/// Cognito credentials of the active user.
/// {@endtemplate}
@zAmplifySerializable
@_CognitoSignInMethodSerializer()
@JsonWebTokenSerializer()
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
  void validate({
    String? nonce,
  }) {
    // Missing nonce values or nonce mismatches should throw exceptions,
    // indicating the tokens cannot be used.
    final idTokenNonce = idToken.nonce;
    if (nonce == null || idTokenNonce == null) {
      throw const InvalidStateException('Missing nonce');
    }
    if (nonce != idTokenNonce) {
      throw const InvalidStateException('Nonce values do not match');
    }
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
