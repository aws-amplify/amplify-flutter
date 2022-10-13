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

import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
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

  /// The expiration of time of [accessToken].
  DateTime? get expirationTime => accessToken.claims.expiration;

  /// The issued at time of [accessToken].
  DateTime? get issuedTime => accessToken.claims.issuedAt;

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
  // ignore: unnecessary_overrides
  String toString() => super.toString();
}

/// The method by which the user logged in and retrieved the accompanying
/// [CognitoUserPoolTokens].
class CognitoSignInMethod extends EnumClass with AWSSerializable<String> {
  const CognitoSignInMethod._(super.name);

  /// Default (non-Hosted UI) method.
  static const CognitoSignInMethod default$ = _$default$;

  /// Hosted UI
  static const CognitoSignInMethod hostedUi = _$hostedUi;

  /// All values of [CognitoSignInMethod].
  static BuiltSet<CognitoSignInMethod> get values =>
      _$CognitoSignInMethodValues;

  /// Gets the [CognitoSignInMethod] value corresponding to [name].
  static CognitoSignInMethod valueOf(String name) =>
      _$CognitoSignInMethodValueOf(name);

  @override
  String toJson() => name;
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
