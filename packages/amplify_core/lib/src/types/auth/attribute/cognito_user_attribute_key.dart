// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// User attributes available for configuring via `Amplify.Auth.signUp`,
/// or updating via `Amplify.Auth.updateUserAttribute` and
/// `Amplify.Auth.updateUserAttributes`.
///
/// More information about these attributes can be found
/// [here](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html).
///
/// Use [CognitoUserAttributeKey.custom] to create a custom Cognito attribute.
@immutable
class CognitoUserAttributeKey extends AuthUserAttributeKey
    with AWSEquatable<CognitoUserAttributeKey>, AWSDebuggable {
  const CognitoUserAttributeKey._(this._key, {this.readOnly = false})
      : isCustom = false;

  /// Creates a custom Cognito attribute.
  const CognitoUserAttributeKey.custom(this._key)
      : isCustom = true,
        readOnly = false;

  /// Creates an unknown Cognito attribute.
  const CognitoUserAttributeKey._unknown(this._key)
      : isCustom = false,
        readOnly = true;

  /// Parses the given Cognito attribute key.
  ///
  /// Intended for parsing keys that have been received from Cognito.
  /// Use [CognitoUserAttributeKey.custom] to construct custom
  /// attribute keys, or one of the static constructors such
  /// as [CognitoUserAttributeKey.name] for standard attributes.
  factory CognitoUserAttributeKey.parse(String key) {
    key = key.toLowerCase();
    // Custom attributes from Cognito will always start with the required prefix
    if (hasCustomPrefix(key)) {
      return CognitoUserAttributeKey.custom(key);
    }
    return values.firstWhere(
      (attr) => attr.key == key,
      orElse: () => CognitoUserAttributeKey._unknown(key),
    );
  }

  /// Prefix for custom Cognito attributes.
  static const _customPrefix = 'custom:';

  /// Whether or not a key starts with the custom prefix that is
  /// required by Cognito for custom attributes.
  static bool hasCustomPrefix(String key) => key.startsWith(_customPrefix);

  /// Key provided when the attribute was constructed.
  ///
  /// For custom attributes, this may be missing the Cognito
  /// required prefix.
  final String _key;

  @override
  String get key =>
      isCustom && !hasCustomPrefix(_key) ? '$_customPrefix$_key' : _key;

  /// Whether this attribute can only be read from Cognito.
  final bool readOnly;

  /// Whether this is a custom key.
  final bool isCustom;

  @override
  List<Object?> get props => [
        // Cognito will lowercase these in API calls
        key.toLowerCase(),
      ];

  /// {@macro amplify_core.user_attribute.address}
  ///
  /// Read-only: `false`
  static const address = CognitoUserAttributeKey._('address');

  /// {@macro amplify_core.user_attribute.birthdate}
  ///
  /// Read-only: `false`
  static const birthdate = CognitoUserAttributeKey._('birthdate');

  /// {@macro amplify_core.user_attribute.email}
  ///
  /// Read-only: `false`
  static const email = CognitoUserAttributeKey._('email');

  /// {@macro amplify_core.user_attribute.email_verified}
  ///
  /// Read-only: `true`
  static const emailVerified = CognitoUserAttributeKey._(
    'email_verified',
    readOnly: true,
  );

  /// {@macro amplify_core.user_attribute.family_name}
  ///
  /// Read-only: `false`
  static const familyName = CognitoUserAttributeKey._('family_name');

  /// {@macro amplify_core.user_attribute.gender}
  ///
  /// Read-only: `false`
  static const gender = CognitoUserAttributeKey._('gender');

  /// {@macro amplify_core.user_attribute.given_name}
  ///
  /// Read-only: `false`
  static const givenName = CognitoUserAttributeKey._('given_name');

  /// Federated identities of the user.
  ///
  /// Read-only: `true`
  static const identities =
      CognitoUserAttributeKey._('identities', readOnly: true);

  /// {@macro amplify_core.user_attribute.locale}
  ///
  /// Read-only: `false`
  static const locale = CognitoUserAttributeKey._('locale');

  /// {@macro amplify_core.user_attribute.middle_name}
  ///
  /// Read-only: `false`
  static const middleName = CognitoUserAttributeKey._('middle_name');

  /// {@macro amplify_core.user_attribute.name}
  ///
  /// Read-only: `false`
  static const name = CognitoUserAttributeKey._('name');

  /// Casual name of the user that may or may not be the same as their given
  /// name.
  ///
  /// Read-only: `false`
  static const nickname = CognitoUserAttributeKey._('nickname');

  /// {@macro amplify_core.user_attribute.phone_number}
  ///
  /// Read-only: `false`
  static const phoneNumber = CognitoUserAttributeKey._('phone_number');

  /// {@macro amplify_core.user_attribute.phone_number_verified}
  ///
  /// Read-only: `true`
  static const phoneNumberVerified = CognitoUserAttributeKey._(
    'phone_number_verified',
    readOnly: true,
  );

  /// {@macro amplify_core.user_attribute.picture}
  ///
  /// Read-only: `false`
  static const picture = CognitoUserAttributeKey._('picture');

  /// {@macro amplify_core.user_attribute.preferred_username}
  ///
  /// Read-only: `false`
  static const preferredUsername =
      CognitoUserAttributeKey._('preferred_username');

  /// {@macro amplify_core.user_attribute.profile}
  ///
  /// Read-only: `false`
  static const profile = CognitoUserAttributeKey._('profile');

  /// {@macro amplify_core.user_attribute.sub}
  ///
  /// Read-only: `true`
  static const sub = CognitoUserAttributeKey._('sub', readOnly: true);

  /// {@macro amplify_core.user_attribute.updated_at}
  ///
  /// Read-only: `false`
  static const updatedAt = CognitoUserAttributeKey._('updated_at');

  /// {@macro amplify_core.user_attribute.website}
  ///
  /// Read-only: `false`
  static const website = CognitoUserAttributeKey._('website');

  /// {@macro amplify_core.user_attribute.zoneinfo}
  ///
  /// Read-only: `false`
  static const zoneinfo = CognitoUserAttributeKey._('zoneinfo');

  static const values = [
    address,
    birthdate,
    email,
    emailVerified,
    familyName,
    gender,
    givenName,
    identities,
    locale,
    middleName,
    name,
    nickname,
    phoneNumber,
    phoneNumberVerified,
    picture,
    preferredUsername,
    profile,
    sub,
    updatedAt,
    website,
    zoneinfo
  ];

  @override
  String get runtimeTypeName => 'CognitoUserAttributeKey';
}
