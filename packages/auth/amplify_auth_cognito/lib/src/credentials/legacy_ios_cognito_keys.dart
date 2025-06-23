// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Keys used by the legacy iOS SDK
/// References:
/// - https://github.com/aws-amplify/aws-sdk-ios/blob/main/AWSCognitoAuth/AWSCognitoAuth.m
/// - https://github.com/aws-amplify/aws-sdk-ios/blob/main/AWSCognitoIdentityProvider/AWSCognitoIdentityUserPool.m
/// - https://github.com/aws-amplify/aws-sdk-ios/blob/main/AWSCore/Authentication/AWSCredentialsProvider.m
@internal
library;

import 'dart:collection';

import 'package:meta/meta.dart';

/// Discrete keys stored for Legacy Cognito operations on iOS.
enum LegacyCognitoKey {
  /// The ID of the user that is currently authenticated.
  currentUser,
}

/// Discrete keys stored for Legacy Cognito User Pool operations on iOS.
enum LegacyCognitoUserPoolKey {
  /// The access token, serialized as a JWT.
  accessToken,

  /// The refresh token.
  refreshToken,

  /// The ID token, serialized as a JWT.
  idToken,

  /// The token expiration.
  tokenExpiration,
}

/// Discrete keys stored for Legacy Cognito Identity Pool operations on iOS.
enum LegacyCognitoIdentityPoolKey {
  /// AWS Access Key ID
  accessKey,

  /// AWS Secret Access Key
  secretKey,

  /// AWS Session Token
  sessionKey,

  /// AWS Credentials Expiration, encoded using ISO 8601.
  expiration,

  /// AWS Identity ID.
  identityId,
}

/// Discrete keys stored for Legacy Device Secrets on iOS.
enum LegacyDeviceSecretKey {
  /// The device key.
  id,

  /// The device password.
  secret,

  /// The device group key.
  group,
}

/// Discrete keys stored for Legacy ASF on iOS.
enum LegacyAsfDeviceKey {
  /// The advanced security feature (ASF) device identifier.
  id,
}

/// {@template amplify_auth_cognito.legacy_cognito_identity_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// legacy Cognito Identity Pool operations.
/// {@endtemplate}
class LegacyCognitoUserKeys extends LegacyIOSCognitoKeys<LegacyCognitoKey> {
  /// {@macro amplify_auth_cognito.legacy_cognito_identity_pool_keys}
  const LegacyCognitoUserKeys(this.userPoolClientId);

  /// The Cognito user pool client id , used to determine the key
  /// prefixes.
  final String userPoolClientId;

  @override
  List<LegacyCognitoKey> get _values => LegacyCognitoKey.values;

  @override
  String? get prefix => userPoolClientId;
}

/// {@template amplify_auth_cognito.legacy_cognito_identity_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// legacy Cognito Identity Pool operations.
/// {@endtemplate}
class LegacyCognitoIdentityPoolKeys
    extends LegacyIOSCognitoKeys<LegacyCognitoIdentityPoolKey> {
  /// {@macro amplify_auth_cognito.legacy_cognito_identity_pool_keys}
  const LegacyCognitoIdentityPoolKeys();

  @override
  List<LegacyCognitoIdentityPoolKey> get _values =>
      LegacyCognitoIdentityPoolKey.values;

  @override
  String? get prefix => null;
}

/// {@template amplify_auth_cognito.cognito_user_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// legacy Cognito User Pool operations.
/// {@endtemplate}
class LegacyCognitoUserPoolKeys
    extends LegacyIOSCognitoKeys<LegacyCognitoUserPoolKey> {
  /// {@macro amplify_auth_cognito.cognito_user_pool_keys}
  const LegacyCognitoUserPoolKeys(this.currentUserId, this.userPoolClientId);

  /// The Cognito user pool client id, used to determine the key
  /// prefixes.
  final String userPoolClientId;

  /// The current user ID, used to determine the key prefixes.
  final String currentUserId;

  @override
  List<LegacyCognitoUserPoolKey> get _values => LegacyCognitoUserPoolKey.values;

  @override
  String get prefix => '$userPoolClientId.$currentUserId';
}

/// {@template amplify_auth_cognito.cognito_user_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage for
/// Device Secrets.
/// {@endtemplate}
class LegacyDeviceSecretKeys
    extends LegacyIOSCognitoKeys<LegacyDeviceSecretKey> {
  /// {@macro amplify_auth_cognito.cognito_user_pool_keys}
  const LegacyDeviceSecretKeys(this.currentUserId, this.userPoolId);

  /// The Cognito user pool id, used to determine the key
  /// prefixes.
  final String userPoolId;

  /// The current user ID, used to determine the key prefixes.
  final String currentUserId;

  @override
  List<LegacyDeviceSecretKey> get _values => LegacyDeviceSecretKey.values;

  @override
  String get prefix => '$userPoolId.$currentUserId.device';
}

/// {@template amplify_auth_cognito.cognito_user_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage for
/// ASF Device Secrets.
/// {@endtemplate}
class LegacyAsfDeviceKeys extends LegacyIOSCognitoKeys<LegacyAsfDeviceKey> {
  /// {@macro amplify_auth_cognito.cognito_user_pool_keys}
  const LegacyAsfDeviceKeys(this.currentUserId, this.userPoolId);

  /// The Cognito user pool id, used to determine the key
  /// prefixes.
  final String userPoolId;

  /// The current user ID, used to determine the key prefixes.
  final String currentUserId;

  @override
  List<LegacyAsfDeviceKey> get _values => LegacyAsfDeviceKey.values;

  @override
  String get prefix => '$userPoolId.$currentUserId.asf.device';
}

/// {@template amplify_auth_cognito.cognito_keys}
/// Iterable secure storage keys.
/// {@endtemplate}
abstract class LegacyIOSCognitoKeys<Key extends Enum>
    extends IterableBase<String> {
  /// {@macro amplify_auth_cognito.cognito_keys}
  const LegacyIOSCognitoKeys();

  /// Enum values of the key type.
  List<Key> get _values;

  /// The prefix to use for keys.
  String? get prefix;

  /// Retrieves the storage identifier for [key].
  String operator [](Key key) =>
      prefix == null ? key.name : '$prefix.${key.name}';

  @override
  Iterator<String> get iterator => _LegacyIOSCognitoKeysIterator(this);
}

class _LegacyIOSCognitoKeysIterator<Key extends Enum>
    implements Iterator<String> {
  _LegacyIOSCognitoKeysIterator(this._keys);

  final LegacyIOSCognitoKeys<Key> _keys;

  /// Current index of iteration.
  int _currentIndex = -1;

  @override
  String get current {
    if (_currentIndex < 0) {
      throw StateError('Must call moveNext first');
    }
    final currentKey = _keys._values[_currentIndex];
    return _keys[currentKey];
  }

  @override
  bool moveNext() => ++_currentIndex < _keys._values.length;
}
