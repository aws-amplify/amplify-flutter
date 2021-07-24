enum SignUpType {
  username,
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

SignUpType fromStringToSignUpType(String str) {
  return SignUpType.values
      .firstWhere((value) => value.toString().split('.')[1] == str);
}
