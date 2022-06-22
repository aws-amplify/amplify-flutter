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
class CognitoUserAttributeKey extends UserAttributeKey
    with AWSEquatable<CognitoUserAttributeKey>, AWSDebuggable {
  const CognitoUserAttributeKey._(this._key, {this.readOnly = false})
      : isCustom = false;

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

  /// Key provided when the attribute was constructed.
  ///
  /// For custom attributes, this may be missing the Cognito
  /// required prefix.
  final String _key;

  @override
  String get key =>
      isCustom && !hasCustomPrefix(_key) ? '$_customPrefix$_key' : _key;

  /// Wether or not a key has starts with the custom prefix that is
  /// required by Cognito for custom attributes.
  static bool hasCustomPrefix(String key) => key.startsWith(_customPrefix);

  /// Whether this attribute can only be read from Cognito.
  final bool readOnly;

  /// Whether this is a custom key.
  final bool isCustom;

  @override
  List<Object?> get props => [
        // Cognito will lowercase these in API calls
        key.toLowerCase(),
      ];

  /// The user's preferred postal address.
  ///
  /// Read-only: `false`
  static const address = CognitoUserAttributeKey._('address');

  /// The user's birthday, represented as an ISO 8601 YYYY-MM-DD format.
  ///
  /// Read-only: `false`
  static const birthdate = CognitoUserAttributeKey._('birthdate');

  /// The user's preferred e-mail address.
  ///
  /// Read-only: `false`
  static const email = CognitoUserAttributeKey._('email');

  /// Whether the user's preferred e-mail address has been verified in Cognito.
  ///
  /// Read-only: `true`
  static const emailVerified = CognitoUserAttributeKey._(
    'email_verified',
    readOnly: true,
  );

  /// Surname(s) or last name(s) of the user.
  ///
  /// Read-only: `false`
  static const familyName = CognitoUserAttributeKey._('family_name');

  /// The user's gender.
  ///
  /// Read-only: `false`
  static const gender = CognitoUserAttributeKey._('gender');

  /// Given name(s) or first name(s) of the user.
  ///
  /// Read-only: `false`
  static const givenName = CognitoUserAttributeKey._('given_name');

  /// Federated identities of the user.
  ///
  /// Read-only: `true`
  static const identities =
      CognitoUserAttributeKey._('identities', readOnly: true);

  /// The user's locale, represented as a BCP47 language tag, e.g. `en-US`.
  ///
  /// Read-only: `false`
  static const locale = CognitoUserAttributeKey._('locale');

  /// Middle name(s) of the user.
  ///
  /// Read-only: `false`
  static const middleName = CognitoUserAttributeKey._('middle_name');

  /// The user's full name in displayable form including all name parts,
  /// possibly including titles and suffixes, ordered according to the user's
  /// locale and preferences.
  ///
  /// Read-only: `false`
  static const name = CognitoUserAttributeKey._('name');

  /// Casual name of the user that may or may not be the same as their given
  /// name.
  ///
  /// Read-only: `false`
  static const nickname = CognitoUserAttributeKey._('nickname');

  /// The user's preferred telephone number.
  ///
  /// Read-only: `false`
  static const phoneNumber = CognitoUserAttributeKey._('phone_number');

  /// Whether the user's preferred telephone number has been verified in
  /// Cognito.
  ///
  /// Read-only: `true`
  static const phoneNumberVerified = CognitoUserAttributeKey._(
    'phone_number_verified',
    readOnly: true,
  );

  /// URL of the user's profile picture.
  ///
  /// Read-only: `false`
  static const picture = CognitoUserAttributeKey._('picture');

  /// The username by which the user wishes to be referred to.
  ///
  /// Read-only: `false`
  static const preferredUsername =
      CognitoUserAttributeKey._('preferred_username');

  /// URL of the user's profile page.
  ///
  /// Read-only: `false`
  static const profile = CognitoUserAttributeKey._('profile');

  /// The user ID.
  ///
  /// Read-only: `true`
  static const sub = CognitoUserAttributeKey._('sub', readOnly: true);

  /// The time the user's information was last updated.
  ///
  /// Read-only: `false`
  static const updatedAt = CognitoUserAttributeKey._('updated_at');

  /// URL of the user's Web page or blog.
  ///
  /// Read-only: `false`
  static const website = CognitoUserAttributeKey._('website');

  /// A string from the [zoneinfo](https://www.iana.org/time-zones) time zone
  /// database representing the user's time zone, e.g. `America/Los_Angeles`.
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
