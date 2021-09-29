/// Standard user attributes available for configuring via `Amplify.Auth.signUp`,
/// or updating via `Amplify.Auth.updateUserAttribute` and
/// `Amplify.Auth.updateUserAttributes`.
///
/// More information about these attributes can be found
/// [here](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html).
class CognitoUserAttributes {
  final String value;

  const CognitoUserAttributes._(this.value);
  const CognitoUserAttributes.custom(String key) : this._('custom:$key');

  static const address = CognitoUserAttributes._('address');
  static const birthdate = CognitoUserAttributes._('birthdate');
  static const email = CognitoUserAttributes._('email');
  static const familyName = CognitoUserAttributes._('family_name');
  static const gender = CognitoUserAttributes._('gender');
  static const givenName = CognitoUserAttributes._('given_name');
  static const locale = CognitoUserAttributes._('locale');
  static const middleName = CognitoUserAttributes._('middle_name');
  static const name = CognitoUserAttributes._('name');
  static const nickname = CognitoUserAttributes._('nickname');
  static const phoneNumber = CognitoUserAttributes._('phone_number');
  static const picture = CognitoUserAttributes._('picture');
  static const preferredUsername =
      CognitoUserAttributes._('preferred_username');
  static const profile = CognitoUserAttributes._('profile');
  static const updatedAt = CognitoUserAttributes._('updated_at');
  static const website = CognitoUserAttributes._('website');
  static const zoneinfo = CognitoUserAttributes._('zoneinfo');

  static const values = [
    address,
    birthdate,
    email,
    familyName,
    gender,
    givenName,
    locale,
    middleName,
    name,
    nickname,
    phoneNumber,
    picture,
    preferredUsername,
    profile,
    updatedAt,
    website,
    zoneinfo,
  ];
}
