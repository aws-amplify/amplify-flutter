import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/foundation.dart';

/// User attributes available for configuring via `Amplify.Auth.signUp`,
/// or updating via `Amplify.Auth.updateUserAttribute` and
/// `Amplify.Auth.updateUserAttributes`.
///
/// More information about these attributes can be found
/// [here](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html).
///
/// Use [CognitoUserAttributeKey.custom] to create a custom Cognito attribute.
@immutable
class CognitoUserAttributeKey extends UserAttributeKey {
  const CognitoUserAttributeKey._(this.key, {this.readOnly = false});

  /// Prefix for custom Cognito attributes.
  static const _customPrefix = 'custom:';

  /// The JSON key for this attribute.
  @override
  final String key;

  /// Whether this attribute can only be read from Cognito.
  final bool readOnly;

  /// Creates a custom Cognito attribute.
  const CognitoUserAttributeKey.custom(String key)
      : key = '$_customPrefix$key',
        readOnly = false;

  /// Parses the given Cognito attribute key.
  factory CognitoUserAttributeKey.parse(String key) {
    key = key.toLowerCase();
    return values.firstWhere(
      (attr) => attr.key == key,
      orElse: () => CognitoUserAttributeKey._(
        key,
        readOnly: !key.startsWith(_customPrefix),
      ),
    );
  }

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
    locale,
    middleName,
    name,
    nickname,
    phoneNumber,
    phoneNumberVerified,
    picture,
    preferredUsername,
    profile,
    updatedAt,
    website,
    zoneinfo
  ];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CognitoUserAttributeKey &&
          key == other.key &&
          readOnly == other.readOnly;

  @override
  int get hashCode => key.hashCode ^ readOnly.hashCode;
}
