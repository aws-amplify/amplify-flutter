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

@internal
library amplify_auth_cognito.credentials.cognito_keys;

import 'dart:collection';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Discrete keys stored for Legacy Cognito operations on iOS.
enum LegacyCognitoKey {
  /// The ID of the user that is currently authenticated.
  currentUser;
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

/// {@template amplify_auth_cognito.legacy_cognito_identity_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// legacy Cognito Identity Pool operations.
/// {@endtemplate}
class LegacyCognitoUserKeys extends CognitoKeys<LegacyCognitoKey> {
  /// {@macro amplify_auth_cognito.legacy_cognito_identity_pool_keys}
  const LegacyCognitoUserKeys(this.config);

  /// The Cognito identity pool configuration, used to determine the key
  /// prefixes.
  final CognitoUserPoolConfig config;

  @override
  List<LegacyCognitoKey> get _values => LegacyCognitoKey.values;

  @override
  String? get prefix => config.appClientId;
}

/// {@template amplify_auth_cognito.legacy_cognito_identity_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// legacy Cognito Identity Pool operations.
/// {@endtemplate}
class LegacyCognitoIdentityPoolKeys
    extends CognitoKeys<LegacyCognitoIdentityPoolKey> {
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
class LegacyCognitoUserPoolKeys extends CognitoKeys<LegacyCognitoUserPoolKey> {
  /// {@macro amplify_auth_cognito.cognito_user_pool_keys}
  const LegacyCognitoUserPoolKeys(this.currentUserId, this.config);

  /// The Cognito identity pool configuration, used to determine the key
  /// prefixes.
  final CognitoUserPoolConfig config;

  /// The current user ID, used to determine the key prefixes.
  final String currentUserId;

  @override
  List<LegacyCognitoUserPoolKey> get _values => LegacyCognitoUserPoolKey.values;

  @override
  String get prefix => '${config.appClientId}.$currentUserId';
}

/// {@template amplify_auth_cognito.cognito_keys}
/// Iterable secure storage keys.
/// {@endtemplate}
abstract class CognitoKeys<Key extends Enum> extends IterableBase<String> {
  /// {@macro amplify_auth_cognito.cognito_keys}
  const CognitoKeys();

  /// Enum values of the key type.
  List<Key> get _values;

  /// The prefix to use for keys.
  String? get prefix;

  /// Retrieves the storage identifier for [key].
  String operator [](Key key) =>
      prefix == null ? key.name : '$prefix.${key.name}';

  @override
  Iterator<String> get iterator => _CognitoKeysIterator(this);
}

class _CognitoKeysIterator<Key extends Enum> implements Iterator<String> {
  _CognitoKeysIterator(this._keys);

  final CognitoKeys<Key> _keys;

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
