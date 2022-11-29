/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

// TODO(dnys1): Remove at GA
@Deprecated('Use AuthUserAttributeKey instead')
typedef UserAttributeKey = AuthUserAttributeKey;

/// {@template amplify_core.auth_user_attribute_key}
/// A user attribute identifier.
/// {@endtemplate}
@immutable
abstract class AuthUserAttributeKey
    with AWSSerializable<String>
    implements Comparable<AuthUserAttributeKey> {
  /// {@macro amplify_core.auth_user_attribute_key}
  const AuthUserAttributeKey();

  /// The JSON key for this attribute.
  String get key;

  /// {@template amplify_core.user_attribute.address}
  /// The user's preferred postal address.
  /// {@endtemplate}
  static const AuthUserAttributeKey address = _AuthUserAttributeKey('address');

  /// {@template amplify_core.user_attribute.birthdate}
  /// The user's birthday, represented as an ISO 8601 YYYY-MM-DD format.
  /// {@endtemplate}
  static const AuthUserAttributeKey birthdate =
      _AuthUserAttributeKey('birthdate');

  /// {@template amplify_core.user_attribute.email}
  /// The user's preferred e-mail address.
  /// {@endtemplate}
  static const AuthUserAttributeKey email = _AuthUserAttributeKey('email');

  /// {@template amplify_core.user_attribute.email_verified}
  /// Whether the user's preferred e-mail address has been verified.
  /// {@endtemplate}
  static const AuthUserAttributeKey emailVerified =
      _AuthUserAttributeKey('email_verified');

  /// {@template amplify_core.user_attribute.family_name}
  /// Surname(s) or last name(s) of the user.
  /// {@endtemplate}
  static const AuthUserAttributeKey familyName =
      _AuthUserAttributeKey('family_name');

  /// {@template amplify_core.user_attribute.gender}
  /// The user's gender.
  /// {@endtemplate}
  static const AuthUserAttributeKey gender = _AuthUserAttributeKey('gender');

  /// {@template amplify_core.user_attribute.given_name}
  /// Given name(s) or first name(s) of the user.
  /// {@endtemplate}
  static const AuthUserAttributeKey givenName =
      _AuthUserAttributeKey('given_name');

  /// {@template amplify_core.user_attribute.locale}
  /// The user's locale, represented as a BCP47 language tag, e.g. `en-US`.
  /// {@endtemplate}
  static const AuthUserAttributeKey locale = _AuthUserAttributeKey('locale');

  /// {@template amplify_core.user_attribute.middle_name}
  /// Middle name(s) of the user.
  /// {@endtemplate}
  static const AuthUserAttributeKey middleName =
      _AuthUserAttributeKey('middle_name');

  /// {@template amplify_core.user_attribute.name}
  /// The user's full name in displayable form including all name parts,
  /// possibly including titles and suffixes, ordered according to the user's
  /// locale and preferences.
  /// {@endtemplate}
  static const AuthUserAttributeKey name = _AuthUserAttributeKey('name');

  /// {@template amplify_core.user_attribute.nickname}
  /// Casual name of the user that may or may not be the same as their given
  /// name.
  /// {@endtemplate}
  static const AuthUserAttributeKey nickname =
      _AuthUserAttributeKey('nickname');

  /// {@template amplify_core.user_attribute.phone_number}
  /// The user's preferred telephone number.
  /// {@endtemplate}
  static const AuthUserAttributeKey phoneNumber =
      _AuthUserAttributeKey('phone_number');

  /// {@template amplify_core.user_attribute.phone_number_verified}
  /// Whether the user's preferred telephone number has been verified.
  /// {@endtemplate}
  static const AuthUserAttributeKey phoneNumberVerified =
      _AuthUserAttributeKey('phone_number_verified');

  /// {@template amplify_core.user_attribute.picture}
  /// URL of the user's profile picture.
  /// {@endtemplate}
  static const AuthUserAttributeKey picture = _AuthUserAttributeKey('picture');

  /// {@template amplify_core.user_attribute.preferred_username}
  /// The username by which the user wishes to be referred to.
  /// {@endtemplate}
  static const AuthUserAttributeKey preferredUsername =
      _AuthUserAttributeKey('preferred_username');

  /// {@template amplify_core.user_attribute.profile}
  /// URL of the user's profile page.
  /// {@endtemplate}
  static const AuthUserAttributeKey profile = _AuthUserAttributeKey('profile');

  /// {@template amplify_core.user_attribute.sub}
  /// The user ID.
  /// {@endtemplate}
  static const AuthUserAttributeKey sub = _AuthUserAttributeKey('sub');

  /// {@template amplify_core.user_attribute.updated_at}
  /// The time the user's information was last updated.
  /// {@endtemplate}
  static const AuthUserAttributeKey updatedAt =
      _AuthUserAttributeKey('updated_at');

  /// {@template amplify_core.user_attribute.website}
  /// URL of the user's Web page or blog.
  /// {@endtemplate}
  static const AuthUserAttributeKey website = _AuthUserAttributeKey('website');

  /// {@template amplify_core.user_attribute.zoneinfo}
  /// A string from the [zoneinfo](https://www.iana.org/time-zones) time zone
  /// database representing the user's time zone, e.g. `America/Los_Angeles`.
  /// {@endtemplate}
  static const AuthUserAttributeKey zoneinfo =
      _AuthUserAttributeKey('zoneinfo');

  @override
  String toJson() => key;

  @override
  int compareTo(AuthUserAttributeKey other) => key.compareTo(other.key);

  @override
  String toString() => key;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthUserAttributeKey && key == other.key;

  @override
  int get hashCode => key.hashCode;
}

class _AuthUserAttributeKey extends AuthUserAttributeKey {
  const _AuthUserAttributeKey(this.key);

  @override
  final String key;
}
