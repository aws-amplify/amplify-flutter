enum ConfirmSignInType {
  code,
  password,
  address,
  birthdate,
  email,
  family_name,
  gender,
  given_name,
  locale,
  middle_name,
  name,
  nickname,
  phone_number,
  picture,
  preferredUsername,
  profile,
  zoneinfo,
  updated_at,
  website
}

ConfirmSignInType fromStringToConfirmSignInType(String str) {
  return ConfirmSignInType.values
      .firstWhere((value) => value.toString().split('.')[1] == str);
}
